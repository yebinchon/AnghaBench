
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FIXED31_32_BITS_PER_FRACTIONAL_PART ;
 unsigned int ux_dy (long long,unsigned int,unsigned int) ;

__attribute__((used)) static inline unsigned int clamp_ux_dy(
 long long value,
 unsigned int integer_bits,
 unsigned int fractional_bits,
 unsigned int min_clamp)
{
 unsigned int truncated_val = ux_dy(value, integer_bits, fractional_bits);

 if (value >= (1LL << (integer_bits + FIXED31_32_BITS_PER_FRACTIONAL_PART)))
  return (1 << (integer_bits + fractional_bits)) - 1;
 else if (truncated_val > min_clamp)
  return truncated_val;
 else
  return min_clamp;
}
