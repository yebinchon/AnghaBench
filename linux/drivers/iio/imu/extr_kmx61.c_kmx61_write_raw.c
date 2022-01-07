
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmx61_data {int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int address; } ;


 int EINVAL ;



 int IIO_MAGN ;
 struct kmx61_data* kmx61_get_data (struct iio_dev*) ;
 int kmx61_set_odr (struct kmx61_data*,int,int,int ) ;
 int kmx61_set_scale (struct kmx61_data*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kmx61_write_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan, int val,
      int val2, long mask)
{
 int ret;
 struct kmx61_data *data = kmx61_get_data(indio_dev);

 switch (mask) {
 case 129:
  if (chan->type != 130 && chan->type != IIO_MAGN)
   return -EINVAL;

  mutex_lock(&data->lock);
  ret = kmx61_set_odr(data, val, val2, chan->address);
  mutex_unlock(&data->lock);
  return ret;
 case 128:
  switch (chan->type) {
  case 130:
   if (val != 0)
    return -EINVAL;
   mutex_lock(&data->lock);
   ret = kmx61_set_scale(data, val2);
   mutex_unlock(&data->lock);
   return ret;
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
