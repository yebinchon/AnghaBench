
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_sensor_data {int buffer_data; int hw_timestamp; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
typedef int s64 ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int ,int ) ;
 int iio_trigger_notify_done (int ) ;
 scalar_t__ iio_trigger_using_own (struct iio_dev*) ;
 int st_sensors_get_buffer_element (struct iio_dev*,int ) ;

irqreturn_t st_sensors_trigger_handler(int irq, void *p)
{
 int len;
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct st_sensor_data *sdata = iio_priv(indio_dev);
 s64 timestamp;







 if (iio_trigger_using_own(indio_dev))
  timestamp = sdata->hw_timestamp;
 else
  timestamp = iio_get_time_ns(indio_dev);

 len = st_sensors_get_buffer_element(indio_dev, sdata->buffer_data);
 if (len < 0)
  goto st_sensors_get_buffer_element_error;

 iio_push_to_buffers_with_timestamp(indio_dev, sdata->buffer_data,
        timestamp);

st_sensors_get_buffer_element_error:
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
