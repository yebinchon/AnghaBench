
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma9553_event {int enabled; } ;
struct mma9553_data {int mutex; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; int type; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;
 struct mma9553_data* iio_priv (struct iio_dev*) ;
 int mma9551_set_power_state (int ,int) ;
 int mma9553_conf_gpio (struct mma9553_data*) ;
 struct mma9553_event* mma9553_get_event (struct mma9553_data*,int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mma9553_write_event_config(struct iio_dev *indio_dev,
          const struct iio_chan_spec *chan,
          enum iio_event_type type,
          enum iio_event_direction dir, int state)
{
 struct mma9553_data *data = iio_priv(indio_dev);
 struct mma9553_event *event;
 int ret;

 event = mma9553_get_event(data, chan->type, chan->channel2, dir);
 if (!event)
  return -EINVAL;

 if (event->enabled == state)
  return 0;

 mutex_lock(&data->mutex);

 ret = mma9551_set_power_state(data->client, state);
 if (ret < 0)
  goto err_out;
 event->enabled = state;

 ret = mma9553_conf_gpio(data);
 if (ret < 0)
  goto err_conf_gpio;

 mutex_unlock(&data->mutex);

 return 0;

err_conf_gpio:
 if (state) {
  event->enabled = 0;
  mma9551_set_power_state(data->client, 0);
 }
err_out:
 mutex_unlock(&data->mutex);
 return ret;
}
