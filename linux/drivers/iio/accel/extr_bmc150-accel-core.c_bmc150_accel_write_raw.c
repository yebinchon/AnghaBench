
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct bmc150_accel_data {int mutex; } ;


 int EINVAL ;


 int bmc150_accel_set_bw (struct bmc150_accel_data*,int,int) ;
 int bmc150_accel_set_scale (struct bmc150_accel_data*,int) ;
 struct bmc150_accel_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bmc150_accel_write_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int val, int val2, long mask)
{
 struct bmc150_accel_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  mutex_lock(&data->mutex);
  ret = bmc150_accel_set_bw(data, val, val2);
  mutex_unlock(&data->mutex);
  break;
 case 128:
  if (val)
   return -EINVAL;

  mutex_lock(&data->mutex);
  ret = bmc150_accel_set_scale(data, val2);
  mutex_unlock(&data->mutex);
  return ret;
 default:
  ret = -EINVAL;
 }

 return ret;
}
