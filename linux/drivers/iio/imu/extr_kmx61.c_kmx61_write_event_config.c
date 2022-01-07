
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmx61_data {int ev_enable_state; int lock; scalar_t__ motion_trig_on; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int KMX61_ACC ;
 struct kmx61_data* kmx61_get_data (struct iio_dev*) ;
 int kmx61_set_power_state (struct kmx61_data*,int,int ) ;
 int kmx61_setup_any_motion_interrupt (struct kmx61_data*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kmx61_write_event_config(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        enum iio_event_type type,
        enum iio_event_direction dir,
        int state)
{
 struct kmx61_data *data = kmx61_get_data(indio_dev);
 int ret = 0;

 if (state && data->ev_enable_state)
  return 0;

 mutex_lock(&data->lock);

 if (!state && data->motion_trig_on) {
  data->ev_enable_state = 0;
  goto err_unlock;
 }

 ret = kmx61_set_power_state(data, state, KMX61_ACC);
 if (ret < 0)
  goto err_unlock;

 ret = kmx61_setup_any_motion_interrupt(data, state);
 if (ret < 0) {
  kmx61_set_power_state(data, 0, KMX61_ACC);
  goto err_unlock;
 }

 data->ev_enable_state = state;

err_unlock:
 mutex_unlock(&data->lock);

 return ret;
}
