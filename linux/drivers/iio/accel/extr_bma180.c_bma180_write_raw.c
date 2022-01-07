
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct bma180_data {int mutex; } ;


 int EINVAL ;


 int bma180_set_bw (struct bma180_data*,int) ;
 int bma180_set_scale (struct bma180_data*,int) ;
 struct bma180_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bma180_write_raw(struct iio_dev *indio_dev,
  struct iio_chan_spec const *chan, int val, int val2, long mask)
{
 struct bma180_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 128:
  if (val)
   return -EINVAL;
  mutex_lock(&data->mutex);
  ret = bma180_set_scale(data, val2);
  mutex_unlock(&data->mutex);
  return ret;
 case 129:
  if (val2)
   return -EINVAL;
  mutex_lock(&data->mutex);
  ret = bma180_set_bw(data, val);
  mutex_unlock(&data->mutex);
  return ret;
 default:
  return -EINVAL;
 }
}
