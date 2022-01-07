
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct bmg160_data {int mutex; } ;


 int EINVAL ;



 int bmg160_set_bw (struct bmg160_data*,int) ;
 int bmg160_set_filter (struct bmg160_data*,int) ;
 int bmg160_set_power_state (struct bmg160_data*,int) ;
 int bmg160_set_scale (struct bmg160_data*,int) ;
 struct bmg160_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bmg160_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val, int val2, long mask)
{
 struct bmg160_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  mutex_lock(&data->mutex);







  ret = bmg160_set_power_state(data, 1);
  if (ret < 0) {
   mutex_unlock(&data->mutex);
   return ret;
  }
  ret = bmg160_set_bw(data, val);
  if (ret < 0) {
   bmg160_set_power_state(data, 0);
   mutex_unlock(&data->mutex);
   return ret;
  }
  ret = bmg160_set_power_state(data, 0);
  mutex_unlock(&data->mutex);
  return ret;
 case 130:
  if (val2)
   return -EINVAL;

  mutex_lock(&data->mutex);
  ret = bmg160_set_power_state(data, 1);
  if (ret < 0) {
   bmg160_set_power_state(data, 0);
   mutex_unlock(&data->mutex);
   return ret;
  }
  ret = bmg160_set_filter(data, val);
  if (ret < 0) {
   bmg160_set_power_state(data, 0);
   mutex_unlock(&data->mutex);
   return ret;
  }
  ret = bmg160_set_power_state(data, 0);
  mutex_unlock(&data->mutex);
  return ret;
 case 128:
  if (val)
   return -EINVAL;

  mutex_lock(&data->mutex);

  ret = bmg160_set_power_state(data, 1);
  if (ret < 0) {
   mutex_unlock(&data->mutex);
   return ret;
  }
  ret = bmg160_set_scale(data, val2);
  if (ret < 0) {
   bmg160_set_power_state(data, 0);
   mutex_unlock(&data->mutex);
   return ret;
  }
  ret = bmg160_set_power_state(data, 0);
  mutex_unlock(&data->mutex);
  return ret;
 default:
  return -EINVAL;
 }

 return -EINVAL;
}
