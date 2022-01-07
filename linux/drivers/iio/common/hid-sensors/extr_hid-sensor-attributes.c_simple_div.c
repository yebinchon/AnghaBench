
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int int_pow (int,int) ;

__attribute__((used)) static void simple_div(int dividend, int divisor, int *whole,
    int *micro_frac)
{
 int rem;
 int exp = 0;

 *micro_frac = 0;
 if (divisor == 0) {
  *whole = 0;
  return;
 }
 *whole = dividend/divisor;
 rem = dividend % divisor;
 if (rem) {
  while (rem <= divisor) {
   rem *= 10;
   exp++;
  }
  *micro_frac = (rem / divisor) * int_pow(10, 6 - exp);
 }
}
