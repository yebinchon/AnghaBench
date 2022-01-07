
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FIXED31_32_BITS_PER_FRACTIONAL_PART ;
 long long FRACTIONAL_PART_MASK ;
 unsigned int GET_INTEGER_PART (long long) ;

__attribute__((used)) static inline unsigned int ux_dy(
 long long value,
 unsigned int integer_bits,
 unsigned int fractional_bits)
{

 unsigned int result = (1 << integer_bits) - 1;

 unsigned int fractional_part = FRACTIONAL_PART_MASK & value;

 result &= GET_INTEGER_PART(value);

 result <<= fractional_bits;

 fractional_part >>= FIXED31_32_BITS_PER_FRACTIONAL_PART - fractional_bits;

 return result | fractional_part;
}
