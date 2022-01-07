
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline unsigned long FAN_FROM_REG(u16 val)
{
 if ((val >= 0xfff) || (val == 0))
  return 0;
 return 1350000UL / val;
}
