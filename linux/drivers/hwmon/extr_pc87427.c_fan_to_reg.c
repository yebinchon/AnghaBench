
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline u16 fan_to_reg(unsigned long val)
{
 if (val < 83UL)
  return 0xffff;
 if (val >= 1350000UL)
  return 0x0004;
 return ((1350000UL + val / 2) / val) << 2;
}
