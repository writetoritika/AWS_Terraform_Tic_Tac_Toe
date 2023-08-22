#!/bin/bash

yum update -y
yum install -y httpd git
git clone https://github.com/unicar9/tictactoe.git
unzip tictactoe.zip
cd tictactoe
python3 -m http.server 80

cp -R tictactoe/* /var/www/html/
systemctl start httpd && systemctl enable httpd
