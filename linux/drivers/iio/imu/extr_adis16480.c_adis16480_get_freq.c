
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct iio_dev {int dummy; } ;
struct adis16480 {scalar_t__ clk_mode; int clk_freq; int adis; } ;


 scalar_t__ ADIS16480_CLK_PPS ;
 unsigned int ADIS16480_REG_DEC_RATE ;
 unsigned int ADIS16495_REG_SYNC_SCALE ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int adis_read_reg_16 (int *,unsigned int,int*) ;
 struct adis16480* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adis16480_get_freq(struct iio_dev *indio_dev, int *val, int *val2)
{
 struct adis16480 *st = iio_priv(indio_dev);
 uint16_t t;
 int ret;
 unsigned freq;
 unsigned int reg;

 if (st->clk_mode == ADIS16480_CLK_PPS)
  reg = ADIS16495_REG_SYNC_SCALE;
 else
  reg = ADIS16480_REG_DEC_RATE;

 ret = adis_read_reg_16(&st->adis, reg, &t);
 if (ret < 0)
  return ret;
 if (st->clk_mode == ADIS16480_CLK_PPS)
  freq = st->clk_freq * t;
 else
  freq = st->clk_freq / (t + 1);

 *val = freq / 1000;
 *val2 = (freq % 1000) * 1000;

 return IIO_VAL_INT_PLUS_MICRO;
}
