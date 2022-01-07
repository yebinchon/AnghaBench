
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int DIV_TO_REG(int val)
{
 int answer = 0;

 while (answer < 7 && (val >>= 1))
  answer++;
 return answer;
}
