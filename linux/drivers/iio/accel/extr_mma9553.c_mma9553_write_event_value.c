
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int actthd; int speed_step; } ;
struct mma9553_data {int mutex; TYPE_1__ conf; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;




 int MMA9553_ACTIVITY_SEC_TO_THD (int) ;
 int MMA9553_ACTIVITY_THD_TO_SEC (int ) ;
 int MMA9553_MASK_CONF_STEPCOALESCE ;
 int MMA9553_MASK_CONF_WORD ;
 int MMA9553_MAX_ACTTHD ;
 int MMA9553_REG_CONF_ACTTHD ;
 int MMA9553_REG_CONF_SPEED_STEP ;
 struct mma9553_data* iio_priv (struct iio_dev*) ;
 int mma9553_set_config (struct mma9553_data*,int ,int *,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mma9553_write_event_value(struct iio_dev *indio_dev,
         const struct iio_chan_spec *chan,
         enum iio_event_type type,
         enum iio_event_direction dir,
         enum iio_event_info info,
         int val, int val2)
{
 struct mma9553_data *data = iio_priv(indio_dev);
 int ret;

 switch (info) {
 case 129:
  switch (chan->type) {
  case 128:
   if (val < 0 || val > 255)
    return -EINVAL;
   mutex_lock(&data->mutex);
   ret = mma9553_set_config(data,
      MMA9553_REG_CONF_SPEED_STEP,
      &data->conf.speed_step, val,
      MMA9553_MASK_CONF_STEPCOALESCE);
   mutex_unlock(&data->mutex);
   return ret;
  default:
   return -EINVAL;
  }
 case 130:
  switch (chan->type) {
  case 131:
   if (val < 0 || val > MMA9553_ACTIVITY_THD_TO_SEC(
       MMA9553_MAX_ACTTHD))
    return -EINVAL;
   mutex_lock(&data->mutex);
   ret = mma9553_set_config(data, MMA9553_REG_CONF_ACTTHD,
       &data->conf.actthd,
       MMA9553_ACTIVITY_SEC_TO_THD
       (val), MMA9553_MASK_CONF_WORD);
   mutex_unlock(&data->mutex);
   return ret;
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
