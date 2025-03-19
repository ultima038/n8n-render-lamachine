FROM n8nio/n8n:latest

# Installation des nodes communautaires et du serveur MCP
RUN npm install -g n8n-nodes-listmonk @illuminaresolutions/n8n-mcp-server

# Copiez votre script de démarrage
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Démarrez avec votre script personnalisé
ENTRYPOINT ["/start.sh"]
