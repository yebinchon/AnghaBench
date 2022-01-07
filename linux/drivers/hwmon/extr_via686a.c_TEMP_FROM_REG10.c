
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 long TEMP_FROM_REG (int) ;
 int* temp_lut ;

__attribute__((used)) static inline long TEMP_FROM_REG10(u16 val)
{
 u16 eight_bits = val >> 2;
 u16 two_bits = val & 3;


 if (two_bits == 0 || eight_bits == 255)
  return TEMP_FROM_REG(eight_bits);


 return (temp_lut[eight_bits] * (4 - two_bits) +
  temp_lut[eight_bits + 1] * two_bits) * 25;
}
