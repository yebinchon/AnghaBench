
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
struct adc084s021 {int lock; TYPE_1__* spi; } ;
typedef int irqreturn_t ;
typedef int __be16 ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 scalar_t__ adc084s021_adc_conversion (struct adc084s021*,int **) ;
 int dev_err (int *,char*) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct adc084s021* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int iio_trigger_notify_done (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static irqreturn_t adc084s021_buffer_trigger_handler(int irq, void *pollfunc)
{
 struct iio_poll_func *pf = pollfunc;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct adc084s021 *adc = iio_priv(indio_dev);
 __be16 data[8] = {0};

 mutex_lock(&adc->lock);

 if (adc084s021_adc_conversion(adc, &data) < 0)
  dev_err(&adc->spi->dev, "Failed to read data\n");

 iio_push_to_buffers_with_timestamp(indio_dev, data,
        iio_get_time_ns(indio_dev));
 mutex_unlock(&adc->lock);
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
