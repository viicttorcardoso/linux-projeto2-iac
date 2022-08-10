#!/bin/bash 

echo"Atualizando o servidor..."

sudo apt-get update 

sudo apt-get upgrade -y

echo"Instalando o Apacha2..."

sudo apt-get install apache2 -y

#echo"Iniciando o seviço do apache

#systemctl start apache2

echo"Instalando o unzip..."

sudo apt-get install unzip -y

echo"Download da aplicação disponível no github... "
cd /tmp
 wget https://github.com/viicttorcardoso/aula_bootstrap/archive/refs/heads/main.zip

echo"Copiando os arquivos da aplicação no diretório padrão do apache"

unzip main.zip
cd aula_bootstrap-main/
cp -R * /var/www/html/
