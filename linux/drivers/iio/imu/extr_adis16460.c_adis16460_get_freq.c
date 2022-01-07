
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct iio_dev {int dummy; } ;
struct adis16460 {int adis; } ;


 int ADIS16460_REG_DEC_RATE ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int adis_read_reg_16 (int *,int ,int*) ;
 struct adis16460* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adis16460_get_freq(struct iio_dev *indio_dev, int *val, int *val2)
{
 struct adis16460 *st = iio_priv(indio_dev);
 uint16_t t;
 int ret;
 unsigned int freq;

 ret = adis_read_reg_16(&st->adis, ADIS16460_REG_DEC_RATE, &t);
 if (ret < 0)
  return ret;

 freq = 2048000 / (t + 1);
 *val = freq / 1000;
 *val2 = (freq % 1000) * 1000;

 return IIO_VAL_INT_PLUS_MICRO;
}
