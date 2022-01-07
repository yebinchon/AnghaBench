
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u16 ;
struct TYPE_2__ {int height_weight; int filter; int speed_step; } ;
struct mma9553_data {int stepcnt_enabled; TYPE_1__ conf; int mutex; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; int type; } ;


 int EINVAL ;
 int IIO_MOD_ROOT_SUM_SQUARED_X_Y_Z ;

 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;

 int MMA9553_MASK_CONF_FILTSTEP ;
 int MMA9553_MASK_CONF_FILTTIME ;
 int MMA9553_MASK_CONF_HEIGHT ;
 int MMA9553_MASK_CONF_SPDPRD ;
 int MMA9553_MASK_CONF_WEIGHT ;
 int MMA9553_MASK_STATUS_ACTIVITY ;
 int MMA9553_REG_CALORIES ;
 int MMA9553_REG_DISTANCE ;
 int MMA9553_REG_SPEED ;
 int MMA9553_REG_STATUS ;
 int MMA9553_REG_STEPCNT ;
 struct mma9553_data* iio_priv (struct iio_dev*) ;
 int mma9551_read_accel_chan (int ,struct iio_chan_spec const*,int*,int*) ;
 int mma9551_read_accel_scale (int*,int*) ;
 int mma9553_activity_to_mod (void*) ;
 void* mma9553_get_bits (int,int ) ;
 int mma9553_read_status_word (struct mma9553_data*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mma9553_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct mma9553_data *data = iio_priv(indio_dev);
 int ret;
 u16 tmp;
 u8 activity;

 switch (mask) {
 case 134:
  switch (chan->type) {
  case 129:
   ret = mma9553_read_status_word(data,
             MMA9553_REG_STEPCNT,
             &tmp);
   if (ret < 0)
    return ret;
   *val = tmp;
   return IIO_VAL_INT;
  case 131:
   ret = mma9553_read_status_word(data,
             MMA9553_REG_DISTANCE,
             &tmp);
   if (ret < 0)
    return ret;
   *val = tmp;
   return IIO_VAL_INT;
  case 141:
   ret = mma9553_read_status_word(data,
             MMA9553_REG_STATUS,
             &tmp);
   if (ret < 0)
    return ret;

   activity =
       mma9553_get_bits(tmp, MMA9553_MASK_STATUS_ACTIVITY);






   if (chan->channel2 == mma9553_activity_to_mod(activity))
    *val = 100;
   else
    *val = 0;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 133:
  switch (chan->type) {
  case 128:
   if (chan->channel2 != IIO_MOD_ROOT_SUM_SQUARED_X_Y_Z)
    return -EINVAL;
   ret = mma9553_read_status_word(data,
             MMA9553_REG_SPEED,
             &tmp);
   if (ret < 0)
    return ret;
   *val = tmp;
   return IIO_VAL_INT;
  case 130:
   ret = mma9553_read_status_word(data,
             MMA9553_REG_CALORIES,
             &tmp);
   if (ret < 0)
    return ret;
   *val = tmp;
   return IIO_VAL_INT;
  case 142:
   mutex_lock(&data->mutex);
   ret = mma9551_read_accel_chan(data->client,
            chan, val, val2);
   mutex_unlock(&data->mutex);
   return ret;
  default:
   return -EINVAL;
  }
 case 132:
  switch (chan->type) {
  case 128:
   if (chan->channel2 != IIO_MOD_ROOT_SUM_SQUARED_X_Y_Z)
    return -EINVAL;
   *val = 0;
   *val2 = 277;
   return IIO_VAL_INT_PLUS_MICRO;
  case 130:
   *val = 4184;
   return IIO_VAL_INT;
  case 142:
   return mma9551_read_accel_scale(val, val2);
  default:
   return -EINVAL;
  }
 case 136:
  *val = data->stepcnt_enabled;
  return IIO_VAL_INT;
 case 140:
  tmp = mma9553_get_bits(data->conf.height_weight,
           MMA9553_MASK_CONF_HEIGHT);
  *val = tmp / 100;
  *val2 = (tmp % 100) * 10000;
  return IIO_VAL_INT_PLUS_MICRO;
 case 139:
  *val = mma9553_get_bits(data->conf.height_weight,
     MMA9553_MASK_CONF_WEIGHT);
  return IIO_VAL_INT;
 case 138:
  switch (chan->type) {
  case 129:
   *val = mma9553_get_bits(data->conf.filter,
      MMA9553_MASK_CONF_FILTSTEP);
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 137:
  switch (chan->type) {
  case 129:
   *val = mma9553_get_bits(data->conf.filter,
      MMA9553_MASK_CONF_FILTTIME);
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 135:
  switch (chan->type) {
  case 128:
   if (chan->channel2 != IIO_MOD_ROOT_SUM_SQUARED_X_Y_Z)
    return -EINVAL;
   *val = mma9553_get_bits(data->conf.speed_step,
      MMA9553_MASK_CONF_SPDPRD);
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
