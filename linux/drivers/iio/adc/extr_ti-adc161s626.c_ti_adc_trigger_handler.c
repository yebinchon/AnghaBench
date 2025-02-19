
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_adc_data {int buffer; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; int * channels; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct ti_adc_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int ,int ) ;
 int iio_trigger_notify_done (int ) ;
 int ti_adc_read_measurement (struct ti_adc_data*,int *,int*) ;

__attribute__((used)) static irqreturn_t ti_adc_trigger_handler(int irq, void *private)
{
 struct iio_poll_func *pf = private;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct ti_adc_data *data = iio_priv(indio_dev);
 int ret;

 ret = ti_adc_read_measurement(data, &indio_dev->channels[0],
         (int *) &data->buffer);
 if (!ret)
  iio_push_to_buffers_with_timestamp(indio_dev,
     data->buffer,
     iio_get_time_ns(indio_dev));

 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
