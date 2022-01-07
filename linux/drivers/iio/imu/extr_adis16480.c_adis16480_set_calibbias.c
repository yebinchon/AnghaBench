
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t scan_index; int type; } ;
struct adis16480 {int adis; } ;


 int EINVAL ;




 unsigned int* adis16480_calibbias_regs ;
 int adis_write_reg_16 (int *,unsigned int,int) ;
 int adis_write_reg_32 (int *,unsigned int,int) ;
 struct adis16480* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adis16480_set_calibbias(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, int bias)
{
 unsigned int reg = adis16480_calibbias_regs[chan->scan_index];
 struct adis16480 *st = iio_priv(indio_dev);

 switch (chan->type) {
 case 129:
 case 128:
  if (bias < -0x8000 || bias >= 0x8000)
   return -EINVAL;
  return adis_write_reg_16(&st->adis, reg, bias);
 case 130:
 case 131:
  return adis_write_reg_32(&st->adis, reg, bias);
 default:
  break;
 }

 return -EINVAL;
}
