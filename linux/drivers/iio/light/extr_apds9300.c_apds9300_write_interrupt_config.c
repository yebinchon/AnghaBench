
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct apds9300_data {int mutex; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int apds9300_set_intr_state (struct apds9300_data*,int) ;
 struct apds9300_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int apds9300_write_interrupt_config(struct iio_dev *indio_dev,
  const struct iio_chan_spec *chan, enum iio_event_type type,
  enum iio_event_direction dir, int state)
{
 struct apds9300_data *data = iio_priv(indio_dev);
 int ret;

 mutex_lock(&data->mutex);
 ret = apds9300_set_intr_state(data, state);
 mutex_unlock(&data->mutex);

 return ret;
}
