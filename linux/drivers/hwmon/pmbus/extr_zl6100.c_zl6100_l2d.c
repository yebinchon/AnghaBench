
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long s32 ;
typedef int s16 ;



__attribute__((used)) static long zl6100_l2d(s16 l)
{
 s16 exponent;
 s32 mantissa;
 long val;

 exponent = l >> 11;
 mantissa = ((s16)((l & 0x7ff) << 5)) >> 5;

 val = mantissa;


 val = val * 1000L;

 if (exponent >= 0)
  val <<= exponent;
 else
  val >>= -exponent;

 return val;
}
