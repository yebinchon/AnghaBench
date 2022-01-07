
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int s16 ;


 int DIV_ROUND_CLOSEST (long,int) ;
 long MAX_MANTISSA ;
 long MIN_MANTISSA ;

__attribute__((used)) static u16 zl6100_d2l(long val)
{
 s16 exponent = 0, mantissa;
 bool negative = 0;


 if (val == 0)
  return 0;

 if (val < 0) {
  negative = 1;
  val = -val;
 }


 while (val >= MAX_MANTISSA && exponent < 15) {
  exponent++;
  val >>= 1;
 }

 while (val < MIN_MANTISSA && exponent > -15) {
  exponent--;
  val <<= 1;
 }


 mantissa = DIV_ROUND_CLOSEST(val, 1000);


 if (mantissa > 0x3ff)
  mantissa = 0x3ff;


 if (negative)
  mantissa = -mantissa;


 return (mantissa & 0x7ff) | ((exponent << 11) & 0xf800);
}
