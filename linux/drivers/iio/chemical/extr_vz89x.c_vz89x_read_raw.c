
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vz89x_data {int* buffer; int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; int channel2; int type; } ;


 int EINVAL ;







 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct vz89x_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vz89x_get_measurement (struct vz89x_data*) ;
 int vz89x_get_resistance_reading (struct vz89x_data*,struct iio_chan_spec const*,int*) ;

__attribute__((used)) static int vz89x_read_raw(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan, int *val,
     int *val2, long mask)
{
 struct vz89x_data *data = iio_priv(indio_dev);
 int ret = -EINVAL;

 switch (mask) {
 case 133:
  mutex_lock(&data->lock);
  ret = vz89x_get_measurement(data);
  mutex_unlock(&data->lock);

  if (ret)
   return ret;

  switch (chan->type) {
  case 131:
   *val = data->buffer[chan->address];
   return IIO_VAL_INT;
  case 128:
   ret = vz89x_get_resistance_reading(data, chan, val);
   if (!ret)
    return IIO_VAL_INT;
   break;
  default:
   return -EINVAL;
  }
  break;
 case 132:
  switch (chan->type) {
  case 128:
   *val = 10;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
  break;
 case 134:
  switch (chan->channel2) {
  case 130:
   *val = 44;
   *val2 = 250000;
   return IIO_VAL_INT_PLUS_MICRO;
  case 129:
   *val = -13;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 }

 return ret;
}
