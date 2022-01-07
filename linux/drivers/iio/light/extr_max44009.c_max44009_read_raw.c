
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max44009_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int EINVAL ;



 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT_PLUS_NANO ;
 int MAX44009_SCALE_DENOMINATOR ;
 int MAX44009_SCALE_NUMERATOR ;
 struct max44009_data* iio_priv (struct iio_dev*) ;
 int max44009_read_int_time (struct max44009_data*) ;
 int max44009_read_lux_raw (struct max44009_data*) ;

__attribute__((used)) static int max44009_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan, int *val,
        int *val2, long mask)
{
 struct max44009_data *data = iio_priv(indio_dev);
 int lux_raw;
 int ret;

 switch (mask) {
 case 129:
  switch (chan->type) {
  case 128:
   ret = max44009_read_lux_raw(data);
   if (ret < 0)
    return ret;
   lux_raw = ret;

   *val = lux_raw * MAX44009_SCALE_NUMERATOR;
   *val2 = MAX44009_SCALE_DENOMINATOR;
   return IIO_VAL_FRACTIONAL;
  default:
   return -EINVAL;
  }
 case 130:
  switch (chan->type) {
  case 128:
   ret = max44009_read_int_time(data);
   if (ret < 0)
    return ret;

   *val2 = ret;
   *val = 0;
   return IIO_VAL_INT_PLUS_NANO;
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
