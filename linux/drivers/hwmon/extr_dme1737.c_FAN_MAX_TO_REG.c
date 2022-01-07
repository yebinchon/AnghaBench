
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* FAN_MAX ;

__attribute__((used)) static int FAN_MAX_TO_REG(long val)
{
 int i;

 for (i = 10; i > 0; i--) {
  if (val > (1000 + (i - 1) * 500))
   break;
 }

 return FAN_MAX[i];
}
