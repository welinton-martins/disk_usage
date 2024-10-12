#!/bin/bash

# Definir o limite de uso do disco (em porcentagem)
LIMIT=50

# Verificar o uso do disco e obter a porcentagem
DISK_USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//g')
echo "Disk usage: "$DISK_USAGE

# Comparar o uso do disco com o limite
if [ "$DISK_USAGE" -gt "$LIMIT" ]; then
  # Enviar um alerta (aqui vamos usar um e-mail como exemplo)
  echo "Alerta: Uso de disco acima de $LIMIT% (uso atual: $DISK_USAGE%)" | mail -s "Alerta de Uso de Disco" welintonmartins4@outlook.com 
fi
