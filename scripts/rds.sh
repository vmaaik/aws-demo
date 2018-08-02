#!/bin/bash  
yum install httpd php php-mysql -y  
yum update -y  
chkconfig httpd on  
service httpd start  
echo "<?php phpinfo();?>" > /var/www/html/index.php
cd /var/www/html  
wget https://raw.githubusercontent.com/vmaaik/aws-demo/master/scripts/connect.php