
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct bh1750_data {int lock; } ;


 int EINVAL ;

 int bh1750_change_int_time (struct bh1750_data*,int) ;
 struct bh1750_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bh1750_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val, int val2, long mask)
{
 int ret;
 struct bh1750_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  if (val != 0)
   return -EINVAL;

  mutex_lock(&data->lock);
  ret = bh1750_change_int_time(data, val2);
  mutex_unlock(&data->lock);
  return ret;
 default:
  return -EINVAL;
 }
}
