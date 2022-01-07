
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long int_pow (int,int) ;
 scalar_t__ isdigit (char const) ;

int strict_strtoul_scaled(const char *cp, unsigned long *res, int scale)
{
 unsigned long result = 0;
 long decimals = -1;
 while (isdigit(*cp) || (*cp == '.' && decimals < 0)) {
  if (*cp == '.')
   decimals = 0;
  else if (decimals < scale) {
   unsigned int value;
   value = *cp - '0';
   result = result * 10 + value;
   if (decimals >= 0)
    decimals++;
  }
  cp++;
 }
 if (*cp == '\n')
  cp++;
 if (*cp)
  return -EINVAL;
 if (decimals < 0)
  decimals = 0;
 *res = result * int_pow(10, scale - decimals);
 return 0;
}
