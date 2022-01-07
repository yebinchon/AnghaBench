
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* PWM_RR ;

__attribute__((used)) static int PWM_RR_TO_REG(long val, int ix, int reg)
{
 int i;

 for (i = 0; i < 7; i++) {
  if (val > (PWM_RR[i] + PWM_RR[i + 1] + 1) / 2)
   break;
 }

 return (ix == 1) ? (reg & 0x8f) | (i << 4) : (reg & 0xf8) | i;
}
