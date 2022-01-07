
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma9551_data {int mutex; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;

 int MMA9551_APPID_TILT ;
 int MMA9551_TILT_ANG_THRESH_MASK ;
 int MMA9551_TILT_CFG_REG ;
 struct mma9551_data* iio_priv (struct iio_dev*) ;
 int mma9551_update_config_bits (int ,int ,int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mma9551_write_event_value(struct iio_dev *indio_dev,
         const struct iio_chan_spec *chan,
         enum iio_event_type type,
         enum iio_event_direction dir,
         enum iio_event_info info,
         int val, int val2)
{
 struct mma9551_data *data = iio_priv(indio_dev);
 int ret;

 switch (chan->type) {
 case 128:
  if (val2 != 0 || val < 1 || val > 10)
   return -EINVAL;
  mutex_lock(&data->mutex);
  ret = mma9551_update_config_bits(data->client,
       MMA9551_APPID_TILT,
       MMA9551_TILT_CFG_REG,
       MMA9551_TILT_ANG_THRESH_MASK,
       val);
  mutex_unlock(&data->mutex);
  return ret;
 default:
  return -EINVAL;
 }
}
