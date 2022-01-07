
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed_step; int filter; int height_weight; } ;
struct mma9553_data {int stepcnt_enabled; int mutex; TYPE_1__ conf; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; int type; } ;


 int EINVAL ;






 int IIO_MOD_ROOT_SUM_SQUARED_X_Y_Z ;


 int MMA9553_MASK_CONF_FILTSTEP ;
 int MMA9553_MASK_CONF_FILTTIME ;
 int MMA9553_MASK_CONF_HEIGHT ;
 int MMA9553_MASK_CONF_SPDPRD ;
 int MMA9553_MASK_CONF_WEIGHT ;
 int MMA9553_REG_CONF_FILTER ;
 int MMA9553_REG_CONF_HEIGHT_WEIGHT ;
 int MMA9553_REG_CONF_SPEED_STEP ;
 struct mma9553_data* iio_priv (struct iio_dev*) ;
 int mma9551_set_power_state (int ,int) ;
 int mma9553_set_config (struct mma9553_data*,int ,int *,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mma9553_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct mma9553_data *data = iio_priv(indio_dev);
 int ret, tmp;

 switch (mask) {
 case 131:
  if (data->stepcnt_enabled == !!val)
   return 0;
  mutex_lock(&data->mutex);
  ret = mma9551_set_power_state(data->client, val);
  if (ret < 0) {
   mutex_unlock(&data->mutex);
   return ret;
  }
  data->stepcnt_enabled = val;
  mutex_unlock(&data->mutex);
  return 0;
 case 135:

  tmp = val * 100 + val2 / 10000;
  if (tmp < 0 || tmp > 255)
   return -EINVAL;
  mutex_lock(&data->mutex);
  ret = mma9553_set_config(data,
      MMA9553_REG_CONF_HEIGHT_WEIGHT,
      &data->conf.height_weight,
      tmp, MMA9553_MASK_CONF_HEIGHT);
  mutex_unlock(&data->mutex);
  return ret;
 case 134:
  if (val < 0 || val > 255)
   return -EINVAL;
  mutex_lock(&data->mutex);
  ret = mma9553_set_config(data,
      MMA9553_REG_CONF_HEIGHT_WEIGHT,
      &data->conf.height_weight,
      val, MMA9553_MASK_CONF_WEIGHT);
  mutex_unlock(&data->mutex);
  return ret;
 case 133:
  switch (chan->type) {
  case 129:




   if (val < 0)
    return -EINVAL;
   if (val > 6)
    val = 6;
   mutex_lock(&data->mutex);
   ret = mma9553_set_config(data, MMA9553_REG_CONF_FILTER,
       &data->conf.filter, val,
       MMA9553_MASK_CONF_FILTSTEP);
   mutex_unlock(&data->mutex);
   return ret;
  default:
   return -EINVAL;
  }
 case 132:
  switch (chan->type) {
  case 129:
   if (val < 0 || val > 127)
    return -EINVAL;
   mutex_lock(&data->mutex);
   ret = mma9553_set_config(data, MMA9553_REG_CONF_FILTER,
       &data->conf.filter, val,
       MMA9553_MASK_CONF_FILTTIME);
   mutex_unlock(&data->mutex);
   return ret;
  default:
   return -EINVAL;
  }
 case 130:
  switch (chan->type) {
  case 128:
   if (chan->channel2 != IIO_MOD_ROOT_SUM_SQUARED_X_Y_Z)
    return -EINVAL;





   if (val < 2)
    return -EINVAL;
   if (val > 5)
    val = 5;
   mutex_lock(&data->mutex);
   ret = mma9553_set_config(data,
       MMA9553_REG_CONF_SPEED_STEP,
       &data->conf.speed_step, val,
       MMA9553_MASK_CONF_SPDPRD);
   mutex_unlock(&data->mutex);
   return ret;
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
