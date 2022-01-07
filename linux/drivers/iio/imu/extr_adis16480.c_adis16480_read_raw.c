
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct adis16480 {TYPE_1__* chip_info; } ;
struct TYPE_2__ {int gyro_max_scale; int gyro_max_val; int accel_max_scale; int accel_max_val; int temp_scale; } ;


 int DIV_ROUND_CLOSEST_ULL (unsigned int,int) ;
 int EINVAL ;
 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int adis16480_get_calibbias (struct iio_dev*,struct iio_chan_spec const*,int*) ;
 int adis16480_get_calibscale (struct iio_dev*,struct iio_chan_spec const*,int*) ;
 int adis16480_get_filter_freq (struct iio_dev*,struct iio_chan_spec const*,int*) ;
 int adis16480_get_freq (struct iio_dev*,int*,int*) ;
 int adis_single_conversion (struct iio_dev*,struct iio_chan_spec const*,int ,int*) ;
 struct adis16480* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adis16480_read_raw(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, int *val, int *val2, long info)
{
 struct adis16480 *st = iio_priv(indio_dev);
 unsigned int temp;

 switch (info) {
 case 133:
  return adis_single_conversion(indio_dev, chan, 0, val);
 case 131:
  switch (chan->type) {
  case 138:
   *val = st->chip_info->gyro_max_scale;
   *val2 = st->chip_info->gyro_max_val;
   return IIO_VAL_FRACTIONAL;
  case 139:
   *val = st->chip_info->accel_max_scale;
   *val2 = st->chip_info->accel_max_val;
   return IIO_VAL_FRACTIONAL;
  case 130:
   *val = 0;
   *val2 = 100;
   return IIO_VAL_INT_PLUS_MICRO;
  case 128:





   *val = st->chip_info->temp_scale / 1000;
   *val2 = (st->chip_info->temp_scale % 1000) * 1000;
   return IIO_VAL_INT_PLUS_MICRO;
  case 129:
   *val = 0;
   *val2 = 4000;
   return IIO_VAL_INT_PLUS_MICRO;
  default:
   return -EINVAL;
  }
 case 134:

  temp = 25 * 1000000LL;
  *val = DIV_ROUND_CLOSEST_ULL(temp, st->chip_info->temp_scale);
  return IIO_VAL_INT;
 case 137:
  return adis16480_get_calibbias(indio_dev, chan, val);
 case 136:
  return adis16480_get_calibscale(indio_dev, chan, val);
 case 135:
  return adis16480_get_filter_freq(indio_dev, chan, val);
 case 132:
  return adis16480_get_freq(indio_dev, val, val2);
 default:
  return -EINVAL;
 }
}
