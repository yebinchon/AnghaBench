
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int fract_exp_two(unsigned int x,
      unsigned int fract_bits)
{
 unsigned int mantissa = 1 << fract_bits;

 mantissa += x & (mantissa - 1);
 x >>= fract_bits;

 return mantissa << x >> fract_bits;
}
