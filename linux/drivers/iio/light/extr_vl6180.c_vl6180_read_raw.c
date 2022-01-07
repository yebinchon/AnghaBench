
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vl6180_data {int als_it_ms; int als_gain_milli; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int address; } ;


 int EINVAL ;






 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct vl6180_data* iio_priv (struct iio_dev*) ;
 int vl6180_measure (struct vl6180_data*,int ) ;

__attribute__((used)) static int vl6180_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 struct vl6180_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 131:
  ret = vl6180_measure(data, chan->address);
  if (ret < 0)
   return ret;
  *val = ret;

  return IIO_VAL_INT;
 case 132:
  *val = data->als_it_ms;
  *val2 = 1000;

  return IIO_VAL_FRACTIONAL;

 case 130:
  switch (chan->type) {
  case 128:

   *val = 32000;
   *val2 = data->als_gain_milli * data->als_it_ms;

   return IIO_VAL_FRACTIONAL;

  case 129:
   *val = 0;
   *val2 = 1000;
   break;
  default:
   return -EINVAL;
  }

  return IIO_VAL_INT_PLUS_MICRO;
 case 133:
  *val = data->als_gain_milli;
  *val2 = 1000;

  return IIO_VAL_FRACTIONAL;

 default:
  return -EINVAL;
 }
}
