
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static inline u16 in_to_reg(u8 index, u16 val)
{
 if (index >= 12 && index <= 14)
  return val / 6;
 else
  return val / 2;
}
