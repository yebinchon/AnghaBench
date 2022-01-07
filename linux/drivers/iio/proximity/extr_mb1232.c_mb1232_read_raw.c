
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb1232_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;


 int EINVAL ;


 scalar_t__ IIO_DISTANCE ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct mb1232_data* iio_priv (struct iio_dev*) ;
 int mb1232_read_distance (struct mb1232_data*) ;

__attribute__((used)) static int mb1232_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *channel, int *val,
       int *val2, long mask)
{
 struct mb1232_data *data = iio_priv(indio_dev);
 int ret;

 if (channel->type != IIO_DISTANCE)
  return -EINVAL;

 switch (mask) {
 case 129:
  ret = mb1232_read_distance(data);
  if (ret < 0)
   return ret;
  *val = ret;
  return IIO_VAL_INT;
 case 128:

  *val = 0;
  *val2 = 10000;
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}
