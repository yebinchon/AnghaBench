
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t scan_index; int type; } ;
struct adis16480 {int adis; } ;


 int EINVAL ;




 int IIO_VAL_INT ;
 unsigned int* adis16480_calibbias_regs ;
 int adis_read_reg_16 (int *,unsigned int,int *) ;
 int adis_read_reg_32 (int *,unsigned int,int *) ;
 struct adis16480* iio_priv (struct iio_dev*) ;
 int sign_extend32 (int ,int) ;

__attribute__((used)) static int adis16480_get_calibbias(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, int *bias)
{
 unsigned int reg = adis16480_calibbias_regs[chan->scan_index];
 struct adis16480 *st = iio_priv(indio_dev);
 uint16_t val16;
 uint32_t val32;
 int ret;

 switch (chan->type) {
 case 129:
 case 128:
  ret = adis_read_reg_16(&st->adis, reg, &val16);
  *bias = sign_extend32(val16, 15);
  break;
 case 130:
 case 131:
  ret = adis_read_reg_32(&st->adis, reg, &val32);
  *bias = sign_extend32(val32, 31);
  break;
 default:
   ret = -EINVAL;
 }

 if (ret < 0)
  return ret;

 return IIO_VAL_INT;
}
