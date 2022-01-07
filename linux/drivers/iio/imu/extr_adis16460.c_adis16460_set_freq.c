
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct adis16460 {int adis; } ;


 int ADIS16460_REG_DEC_RATE ;
 int EINVAL ;
 int adis_write_reg_16 (int *,int ,int) ;
 struct adis16460* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adis16460_set_freq(struct iio_dev *indio_dev, int val, int val2)
{
 struct adis16460 *st = iio_priv(indio_dev);
 int t;

 t = val * 1000 + val2 / 1000;
 if (t <= 0)
  return -EINVAL;

 t = 2048000 / t;
 if (t > 2048)
  t = 2048;

 if (t != 0)
  t--;

 return adis_write_reg_16(&st->adis, ADIS16460_REG_DEC_RATE, t);
}
