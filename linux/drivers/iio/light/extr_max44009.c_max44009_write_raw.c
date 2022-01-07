
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max44009_data {int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;


 int EINVAL ;
 long IIO_CHAN_INFO_INT_TIME ;
 scalar_t__ IIO_LIGHT ;
 struct max44009_data* iio_priv (struct iio_dev*) ;
 int max44009_write_int_time (struct max44009_data*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int max44009_write_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan, int val,
         int val2, long mask)
{
 struct max44009_data *data = iio_priv(indio_dev);
 int ret;

 if (mask == IIO_CHAN_INFO_INT_TIME && chan->type == IIO_LIGHT) {
  mutex_lock(&data->lock);
  ret = max44009_write_int_time(data, val, val2);
  mutex_unlock(&data->lock);
  return ret;
 }
 return -EINVAL;
}
