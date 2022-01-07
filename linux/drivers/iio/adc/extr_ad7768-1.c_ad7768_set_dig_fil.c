
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7768_state {int gpio_sync_in; } ;
typedef enum ad7768_dec_rate { ____Placeholder_ad7768_dec_rate } ad7768_dec_rate ;


 int AD7768_DEC_RATE_16 ;
 int AD7768_DEC_RATE_8 ;
 unsigned int AD7768_DIG_FIL_DEC_RATE (int) ;
 unsigned int AD7768_DIG_FIL_FIL (int) ;
 int AD7768_REG_DIGITAL_FILTER ;
 int ad7768_spi_reg_write (struct ad7768_state*,int ,unsigned int) ;
 int gpiod_set_value (int ,int) ;

__attribute__((used)) static int ad7768_set_dig_fil(struct ad7768_state *st,
         enum ad7768_dec_rate dec_rate)
{
 unsigned int mode;
 int ret;

 if (dec_rate == AD7768_DEC_RATE_8 || dec_rate == AD7768_DEC_RATE_16)
  mode = AD7768_DIG_FIL_FIL(dec_rate);
 else
  mode = AD7768_DIG_FIL_DEC_RATE(dec_rate);

 ret = ad7768_spi_reg_write(st, AD7768_REG_DIGITAL_FILTER, mode);
 if (ret < 0)
  return ret;


 gpiod_set_value(st->gpio_sync_in, 1);
 gpiod_set_value(st->gpio_sync_in, 0);

 return 0;
}
