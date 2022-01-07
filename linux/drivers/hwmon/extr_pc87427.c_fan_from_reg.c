
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline unsigned long fan_from_reg(u16 reg)
{
 reg &= 0xfffc;
 if (reg == 0x0000 || reg == 0xfffc)
  return 0;
 return 5400000UL / reg;
}
