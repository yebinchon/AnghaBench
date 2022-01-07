
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct bmc150_accel_data {int ev_enable_state; int mutex; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int BMC150_ACCEL_INT_ANY_MOTION ;
 int bmc150_accel_set_interrupt (struct bmc150_accel_data*,int ,int) ;
 struct bmc150_accel_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bmc150_accel_write_event_config(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        enum iio_event_type type,
        enum iio_event_direction dir,
        int state)
{
 struct bmc150_accel_data *data = iio_priv(indio_dev);
 int ret;

 if (state == data->ev_enable_state)
  return 0;

 mutex_lock(&data->mutex);

 ret = bmc150_accel_set_interrupt(data, BMC150_ACCEL_INT_ANY_MOTION,
      state);
 if (ret < 0) {
  mutex_unlock(&data->mutex);
  return ret;
 }

 data->ev_enable_state = state;
 mutex_unlock(&data->mutex);

 return 0;
}
