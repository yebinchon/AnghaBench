
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline long fan_from_reg(u16 reg)
{
 reg &= 0xfff;
 if (!reg || reg == 0xfff)
  return 0;
 return 1500000 / reg;
}
