
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t scan_index; } ;
struct adis16480 {int adis; } ;


 int EINVAL ;
 unsigned int* adis16480_calibscale_regs ;
 int adis_write_reg_16 (int *,unsigned int,int) ;
 struct adis16480* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adis16480_set_calibscale(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, int scale)
{
 unsigned int reg = adis16480_calibscale_regs[chan->scan_index];
 struct adis16480 *st = iio_priv(indio_dev);

 if (scale < -0x8000 || scale >= 0x8000)
  return -EINVAL;

 return adis_write_reg_16(&st->adis, reg, scale);
}
