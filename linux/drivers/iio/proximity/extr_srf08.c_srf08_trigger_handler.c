
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srf08_data {int lock; scalar_t__* buffer; } ;
struct iio_poll_func {int timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
typedef scalar_t__ s16 ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct srf08_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,scalar_t__*,int ) ;
 int iio_trigger_notify_done (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ srf08_read_ranging (struct srf08_data*) ;

__attribute__((used)) static irqreturn_t srf08_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct srf08_data *data = iio_priv(indio_dev);
 s16 sensor_data;

 sensor_data = srf08_read_ranging(data);
 if (sensor_data < 0)
  goto err;

 mutex_lock(&data->lock);

 data->buffer[0] = sensor_data;
 iio_push_to_buffers_with_timestamp(indio_dev,
      data->buffer, pf->timestamp);

 mutex_unlock(&data->lock);
err:
 iio_trigger_notify_done(indio_dev->trig);
 return IRQ_HANDLED;
}
