
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static unsigned int fan_from_reg13(u16 reg, unsigned int divreg)
{
 if ((reg & 0xff1f) == 0xff1f)
  return 0;

 reg = (reg & 0x1f) | ((reg & 0xff00) >> 3);

 if (reg == 0)
  return 0;

 return 1350000U / reg;
}
