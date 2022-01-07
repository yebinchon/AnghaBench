
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc2485_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;
 long IIO_CHAN_INFO_RAW ;
 long IIO_CHAN_INFO_SCALE ;
 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 struct ltc2485_data* iio_priv (struct iio_dev*) ;
 int ltc2485_read (struct ltc2485_data*,int*) ;

__attribute__((used)) static int ltc2485_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct ltc2485_data *data = iio_priv(indio_dev);
 int ret;

 if (mask == IIO_CHAN_INFO_RAW) {
  ret = ltc2485_read(data, val);
  if (ret < 0)
   return ret;

  return IIO_VAL_INT;

 } else if (mask == IIO_CHAN_INFO_SCALE) {
  *val = 5000;
  *val2 = 25;
  return IIO_VAL_FRACTIONAL_LOG2;

 } else {
  return -EINVAL;
 }
}
