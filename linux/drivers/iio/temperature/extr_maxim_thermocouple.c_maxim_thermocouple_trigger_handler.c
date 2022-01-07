
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct maxim_thermocouple_data {int buffer; TYPE_1__* chip; int spi; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int read_size; } ;


 int IRQ_HANDLED ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct maxim_thermocouple_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int ,int ) ;
 int iio_trigger_notify_done (int ) ;
 int spi_read (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t maxim_thermocouple_trigger_handler(int irq, void *private)
{
 struct iio_poll_func *pf = private;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct maxim_thermocouple_data *data = iio_priv(indio_dev);
 int ret;

 ret = spi_read(data->spi, data->buffer, data->chip->read_size);
 if (!ret) {
  iio_push_to_buffers_with_timestamp(indio_dev, data->buffer,
         iio_get_time_ns(indio_dev));
 }

 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
