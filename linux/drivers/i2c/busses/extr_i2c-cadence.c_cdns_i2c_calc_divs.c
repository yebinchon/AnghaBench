
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CDNS_I2C_DIVA_MAX ;
 unsigned long CDNS_I2C_DIVB_MAX ;
 unsigned int DIV_ROUND_UP (unsigned long,int) ;
 int EINVAL ;

__attribute__((used)) static int cdns_i2c_calc_divs(unsigned long *f, unsigned long input_clk,
  unsigned int *a, unsigned int *b)
{
 unsigned long fscl = *f, best_fscl = *f, actual_fscl, temp;
 unsigned int div_a, div_b, calc_div_a = 0, calc_div_b = 0;
 unsigned int last_error, current_error;


 temp = input_clk / (22 * fscl);





 if (!temp || (temp > (CDNS_I2C_DIVA_MAX * CDNS_I2C_DIVB_MAX)))
  return -EINVAL;

 last_error = -1;
 for (div_a = 0; div_a < CDNS_I2C_DIVA_MAX; div_a++) {
  div_b = DIV_ROUND_UP(input_clk, 22 * fscl * (div_a + 1));

  if ((div_b < 1) || (div_b > CDNS_I2C_DIVB_MAX))
   continue;
  div_b--;

  actual_fscl = input_clk / (22 * (div_a + 1) * (div_b + 1));

  if (actual_fscl > fscl)
   continue;

  current_error = ((actual_fscl > fscl) ? (actual_fscl - fscl) :
       (fscl - actual_fscl));

  if (last_error > current_error) {
   calc_div_a = div_a;
   calc_div_b = div_b;
   best_fscl = actual_fscl;
   last_error = current_error;
  }
 }

 *a = calc_div_a;
 *b = calc_div_b;
 *f = best_fscl;

 return 0;
}
