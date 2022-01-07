
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int isl29501_find_corr_exp(unsigned int val,
        unsigned int max_exp,
        unsigned int max_mantissa)
{
 unsigned int exp = 1;
 if (val <= max_mantissa)
  return 0;

 while ((val >> exp) > max_mantissa) {
  exp++;

  if (exp > max_exp)
   return max_exp;
 }

 return exp;
}
