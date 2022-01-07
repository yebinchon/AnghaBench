
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma9551_data {int mutex; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int channel2; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;

 struct mma9551_data* iio_priv (struct iio_dev*) ;
 int mma9551_config_incli_event (struct iio_dev*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mma9551_write_event_config(struct iio_dev *indio_dev,
          const struct iio_chan_spec *chan,
          enum iio_event_type type,
          enum iio_event_direction dir,
          int state)
{
 struct mma9551_data *data = iio_priv(indio_dev);
 int ret;

 switch (chan->type) {
 case 128:
  mutex_lock(&data->mutex);
  ret = mma9551_config_incli_event(indio_dev,
       chan->channel2, state);
  mutex_unlock(&data->mutex);
  return ret;
 default:
  return -EINVAL;
 }
}
