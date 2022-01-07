
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixed31_32 {long long value; } ;


 int ASSERT (int) ;
 unsigned int FIXED31_32_BITS_PER_FRACTIONAL_PART ;
 unsigned long long LLONG_MAX ;
 unsigned long long LONG_MAX ;
 unsigned long long complete_integer_division_u64 (unsigned long long,unsigned long long,unsigned long long*) ;

struct fixed31_32 dc_fixpt_from_fraction(long long numerator, long long denominator)
{
 struct fixed31_32 res;

 bool arg1_negative = numerator < 0;
 bool arg2_negative = denominator < 0;

 unsigned long long arg1_value = arg1_negative ? -numerator : numerator;
 unsigned long long arg2_value = arg2_negative ? -denominator : denominator;

 unsigned long long remainder;



 unsigned long long res_value = complete_integer_division_u64(
  arg1_value, arg2_value, &remainder);

 ASSERT(res_value <= LONG_MAX);


 {
  unsigned int i = FIXED31_32_BITS_PER_FRACTIONAL_PART;

  do {
   remainder <<= 1;

   res_value <<= 1;

   if (remainder >= arg2_value) {
    res_value |= 1;
    remainder -= arg2_value;
   }
  } while (--i != 0);
 }


 {
  unsigned long long summand = (remainder << 1) >= arg2_value;

  ASSERT(res_value <= LLONG_MAX - summand);

  res_value += summand;
 }

 res.value = (long long)res_value;

 if (arg1_negative ^ arg2_negative)
  res.value = -res.value;

 return res;
}
