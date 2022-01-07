
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct adis16136 {int adis; TYPE_1__* chip_info; } ;
struct TYPE_2__ {int precision; int fullscale; } ;


 int ADIS16136_REG_GYRO_OFF2 ;
 int EINVAL ;






 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int adis16136_get_filter (struct iio_dev*,int*) ;
 int adis_read_reg_32 (int *,int ,int *) ;
 int adis_single_conversion (struct iio_dev*,struct iio_chan_spec const*,int ,int*) ;
 struct adis16136* iio_priv (struct iio_dev*) ;
 int sign_extend32 (int ,int) ;

__attribute__((used)) static int adis16136_read_raw(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, int *val, int *val2, long info)
{
 struct adis16136 *adis16136 = iio_priv(indio_dev);
 uint32_t val32;
 int ret;

 switch (info) {
 case 130:
  return adis_single_conversion(indio_dev, chan, 0, val);
 case 129:
  switch (chan->type) {
  case 133:
   *val = adis16136->chip_info->precision;
   *val2 = (adis16136->chip_info->fullscale << 16);
   return IIO_VAL_FRACTIONAL;
  case 128:
   *val = 10;
   *val2 = 697000;
   return IIO_VAL_INT_PLUS_MICRO;
  default:
   return -EINVAL;
  }
 case 132:
  ret = adis_read_reg_32(&adis16136->adis,
   ADIS16136_REG_GYRO_OFF2, &val32);
  if (ret < 0)
   return ret;

  *val = sign_extend32(val32, 31);

  return IIO_VAL_INT;
 case 131:
  return adis16136_get_filter(indio_dev, val);
 default:
  return -EINVAL;
 }
}
