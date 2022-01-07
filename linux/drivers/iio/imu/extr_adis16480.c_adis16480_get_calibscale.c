
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t scan_index; } ;
struct adis16480 {int adis; } ;


 int IIO_VAL_INT ;
 unsigned int* adis16480_calibscale_regs ;
 int adis_read_reg_16 (int *,unsigned int,int *) ;
 struct adis16480* iio_priv (struct iio_dev*) ;
 int sign_extend32 (int ,int) ;

__attribute__((used)) static int adis16480_get_calibscale(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, int *scale)
{
 unsigned int reg = adis16480_calibscale_regs[chan->scan_index];
 struct adis16480 *st = iio_priv(indio_dev);
 uint16_t val16;
 int ret;

 ret = adis_read_reg_16(&st->adis, reg, &val16);
 if (ret < 0)
  return ret;

 *scale = sign_extend32(val16, 15);
 return IIO_VAL_INT;
}
