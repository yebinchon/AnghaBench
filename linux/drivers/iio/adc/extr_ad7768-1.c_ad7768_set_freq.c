
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ad7768_state {int mclk_freq; void* samp_freq; } ;
struct TYPE_3__ {int clk_div; int dec_rate; int pwrmode; int mclk_div; } ;


 unsigned int AD7768_PWR_MCLK_DIV (int ) ;
 unsigned int AD7768_PWR_PWRMODE (int ) ;
 int AD7768_REG_POWER_CLOCK ;
 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 void* DIV_ROUND_CLOSEST (int ,unsigned int) ;
 unsigned int U32_MAX ;
 unsigned int abs (int) ;
 TYPE_1__* ad7768_clk_config ;
 int ad7768_set_dig_fil (struct ad7768_state*,int ) ;
 int ad7768_spi_reg_write (struct ad7768_state*,int ,unsigned int) ;

__attribute__((used)) static int ad7768_set_freq(struct ad7768_state *st,
      unsigned int freq)
{
 unsigned int diff_new, diff_old, pwr_mode, i, idx;
 int res, ret;

 diff_old = U32_MAX;
 idx = 0;

 res = DIV_ROUND_CLOSEST(st->mclk_freq, freq);


 for (i = 0; i < ARRAY_SIZE(ad7768_clk_config); i++) {
  diff_new = abs(res - ad7768_clk_config[i].clk_div);
  if (diff_new < diff_old) {
   diff_old = diff_new;
   idx = i;
  }
 }





 pwr_mode = AD7768_PWR_MCLK_DIV(ad7768_clk_config[idx].mclk_div) |
     AD7768_PWR_PWRMODE(ad7768_clk_config[idx].pwrmode);
 ret = ad7768_spi_reg_write(st, AD7768_REG_POWER_CLOCK, pwr_mode);
 if (ret < 0)
  return ret;

 ret = ad7768_set_dig_fil(st, ad7768_clk_config[idx].dec_rate);
 if (ret < 0)
  return ret;

 st->samp_freq = DIV_ROUND_CLOSEST(st->mclk_freq,
       ad7768_clk_config[idx].clk_div);

 return 0;
}
