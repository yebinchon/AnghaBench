
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si7005_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int EINVAL ;



 int IIO_TEMP ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct si7005_data* iio_priv (struct iio_dev*) ;
 int si7005_read_measurement (struct si7005_data*,int) ;

__attribute__((used)) static int si7005_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan, int *val,
       int *val2, long mask)
{
 struct si7005_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  ret = si7005_read_measurement(data, chan->type == IIO_TEMP);
  if (ret < 0)
   return ret;
  *val = ret;
  return IIO_VAL_INT;
 case 128:
  if (chan->type == IIO_TEMP) {
   *val = 7;
   *val2 = 812500;
  } else {
   *val = 3;
   *val2 = 906250;
  }
  return IIO_VAL_INT_PLUS_MICRO;
 case 130:
  if (chan->type == IIO_TEMP)
   *val = -50 * 32 * 4;
  else
   *val = -24 * 16 * 16;
  return IIO_VAL_INT;
 default:
  break;
 }

 return -EINVAL;
}
