
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct fixed31_32 {int dummy; } ;
typedef scalar_t__ int32_t ;


 int dc_fixpt_abs (struct fixed31_32) ;
 scalar_t__ dc_fixpt_floor (int ) ;
 int dc_fixpt_from_int (scalar_t__) ;
 scalar_t__ dc_fixpt_lt (struct fixed31_32,int ) ;
 int dc_fixpt_mul_int (struct fixed31_32,scalar_t__) ;
 int dc_fixpt_recip (int ) ;
 int dc_fixpt_sub (int ,int ) ;
 int dc_fixpt_zero ;

__attribute__((used)) static uint16_t fixed_point_to_int_frac(
 struct fixed31_32 arg,
 uint8_t integer_bits,
 uint8_t fractional_bits)
{
 int32_t numerator;
 int32_t divisor = 1 << fractional_bits;

 uint16_t result;

 uint16_t d = (uint16_t)dc_fixpt_floor(
  dc_fixpt_abs(
   arg));

 if (d <= (uint16_t)(1 << integer_bits) - (1 / (uint16_t)divisor))
  numerator = (uint16_t)dc_fixpt_floor(
   dc_fixpt_mul_int(
    arg,
    divisor));
 else {
  numerator = dc_fixpt_floor(
   dc_fixpt_sub(
    dc_fixpt_from_int(
     1LL << integer_bits),
    dc_fixpt_recip(
     dc_fixpt_from_int(
      divisor))));
 }

 if (numerator >= 0)
  result = (uint16_t)numerator;
 else
  result = (uint16_t)(
  (1 << (integer_bits + fractional_bits + 1)) + numerator);

 if ((result != 0) && dc_fixpt_lt(
  arg, dc_fixpt_zero))
  result |= 1 << (integer_bits + fractional_bits);

 return result;
}
