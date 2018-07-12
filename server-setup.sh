# GENERAL SETUP
sudo apt-get update
sudo apt-get install -y wget curl git nginx ranger emacs htop

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo systemctl start nginx
sudo systemctl enable nginx

########################################################

# NODE.JS APP SETUP
sudo npm install pm2 -g
# cd /home/ubuntu/some/folder && npm i

########################################################

# LETS ENCRYPT SSL SETUP
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install python-certbot-nginx -y
sudo nginx -t
sudo systemctl reload nginx
sudo certbot --nginx -d exmaple.com -d www.exmaple.com
sudo certbot renew --dry-run

########################################################

# SETUP DOCKER AND DOCKER-COMPOSE
sudo apt-get update
sudo apt-get install -y && \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add-
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
         $(lsb_release -cs) \
         stable"
sudo apt-get update
sudo apt-get install docker-ce -y
sudo usermod -aG docker ${USER}
docker --version

sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

sudo reboot

########################################################
