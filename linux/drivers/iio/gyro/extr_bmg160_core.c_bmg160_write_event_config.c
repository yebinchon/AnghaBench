
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct bmg160_data {int ev_enable_state; int mutex; scalar_t__ motion_trigger_on; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int bmg160_set_power_state (struct bmg160_data*,int) ;
 int bmg160_setup_any_motion_interrupt (struct bmg160_data*,int) ;
 struct bmg160_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bmg160_write_event_config(struct iio_dev *indio_dev,
         const struct iio_chan_spec *chan,
         enum iio_event_type type,
         enum iio_event_direction dir,
         int state)
{
 struct bmg160_data *data = iio_priv(indio_dev);
 int ret;

 if (state && data->ev_enable_state)
  return 0;

 mutex_lock(&data->mutex);

 if (!state && data->motion_trigger_on) {
  data->ev_enable_state = 0;
  mutex_unlock(&data->mutex);
  return 0;
 }
 ret = bmg160_set_power_state(data, state);
 if (ret < 0) {
  mutex_unlock(&data->mutex);
  return ret;
 }

 ret = bmg160_setup_any_motion_interrupt(data, state);
 if (ret < 0) {
  bmg160_set_power_state(data, 0);
  mutex_unlock(&data->mutex);
  return ret;
 }

 data->ev_enable_state = state;
 mutex_unlock(&data->mutex);

 return 0;
}
