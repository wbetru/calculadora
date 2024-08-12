#!/bin/bash

echo "Escolha a operação:"
echo "1. Soma"
echo "2. Subtração"
echo "3. Multiplicação"
echo "4. Divisão"

read -p "Digite sua escolha (1/2/3/4): " escolha
read -p "Digite o primeiro número: "  num1
read -p "Digite o segundo número: " num2

case $escolha in
1)
 resultado=$(echo "$num1 + $num2" | bc)
 echo "Resultado: $resultado"
;;
2)
 resultado=$(echo "$num1 - $num2" | bc)
 echo "Resultado: $resultado"
;;
3)
 resultado=$(echo "$num1 * $num2" | bc)
 echo "Resultado: $resultado"
;;
4)
 if [$num2 -ne 0 ]; then
 resultado=$(echo "scale=2; $num1 / $num2" | bc)
 echo "Resultado: $resultado"
 else
 echo "Erro: Divisão por zero"
 fi
 ;;
 *)
 echo "Escolha inválida"
 ;;
esac
