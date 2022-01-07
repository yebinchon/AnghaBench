
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vl53l0x_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;


 int EINVAL ;


 scalar_t__ IIO_DISTANCE ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct vl53l0x_data* iio_priv (struct iio_dev*) ;
 int vl53l0x_read_proximity (struct vl53l0x_data*,struct iio_chan_spec const*,int*) ;

__attribute__((used)) static int vl53l0x_read_raw(struct iio_dev *indio_dev,
       const struct iio_chan_spec *chan,
       int *val, int *val2, long mask)
{
 struct vl53l0x_data *data = iio_priv(indio_dev);
 int ret;

 if (chan->type != IIO_DISTANCE)
  return -EINVAL;

 switch (mask) {
 case 129:
  ret = vl53l0x_read_proximity(data, chan, val);
  if (ret < 0)
   return ret;

  return IIO_VAL_INT;
 case 128:
  *val = 0;
  *val2 = 1000;

  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}
