
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int kstrtoint (char const*,int ,int*) ;

int iio_str_to_fixpoint(const char *str, int fract_mult,
 int *integer, int *fract)
{
 int i = 0, f = 0;
 bool integer_part = 1, negative = 0;

 if (fract_mult == 0) {
  *fract = 0;

  return kstrtoint(str, 0, integer);
 }

 if (str[0] == '-') {
  negative = 1;
  str++;
 } else if (str[0] == '+') {
  str++;
 }

 while (*str) {
  if ('0' <= *str && *str <= '9') {
   if (integer_part) {
    i = i * 10 + *str - '0';
   } else {
    f += fract_mult * (*str - '0');
    fract_mult /= 10;
   }
  } else if (*str == '\n') {
   if (*(str + 1) == '\0')
    break;
   else
    return -EINVAL;
  } else if (*str == '.' && integer_part) {
   integer_part = 0;
  } else {
   return -EINVAL;
  }
  str++;
 }

 if (negative) {
  if (i)
   i = -i;
  else
   f = -f;
 }

 *integer = i;
 *fract = f;

 return 0;
}
