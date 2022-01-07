
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int max44009_lux_raw(u8 hi, u8 lo)
{
 int mantissa;
 int exponent;





 mantissa = ((hi & 0xf) << 4) | (lo & 0xf);


 exponent = (hi >> 4) & 0xf;




 exponent = 1 << exponent;

 return exponent * mantissa;
}
