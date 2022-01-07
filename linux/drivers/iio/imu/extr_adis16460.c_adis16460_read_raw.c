
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct adis16460 {TYPE_1__* chip_info; } ;
struct TYPE_2__ {int gyro_max_scale; int gyro_max_val; int accel_max_scale; int accel_max_val; } ;


 int EINVAL ;







 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int adis16460_get_freq (struct iio_dev*,int*,int*) ;
 int adis_single_conversion (struct iio_dev*,struct iio_chan_spec const*,int ,int*) ;
 struct adis16460* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adis16460_read_raw(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, int *val, int *val2, long info)
{
 struct adis16460 *st = iio_priv(indio_dev);

 switch (info) {
 case 131:
  return adis_single_conversion(indio_dev, chan, 0, val);
 case 129:
  switch (chan->type) {
  case 133:
   *val = st->chip_info->gyro_max_scale;
   *val2 = st->chip_info->gyro_max_val;
   return IIO_VAL_FRACTIONAL;
  case 134:
   *val = st->chip_info->accel_max_scale;
   *val2 = st->chip_info->accel_max_val;
   return IIO_VAL_FRACTIONAL;
  case 128:
   *val = 50;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 132:
  *val = 500;
  return IIO_VAL_INT;
 case 130:
  return adis16460_get_freq(indio_dev, val, val2);
 default:
  return -EINVAL;
 }
}
