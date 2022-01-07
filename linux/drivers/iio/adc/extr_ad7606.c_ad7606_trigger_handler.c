
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
struct ad7606_state {int lock; int gpio_convst; int data; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ad7606_read_samples (struct ad7606_state*) ;
 int gpiod_set_value (int ,int) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct ad7606_state* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int ,int ) ;
 int iio_trigger_notify_done (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static irqreturn_t ad7606_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct ad7606_state *st = iio_priv(indio_dev);
 int ret;

 mutex_lock(&st->lock);

 ret = ad7606_read_samples(st);
 if (ret == 0)
  iio_push_to_buffers_with_timestamp(indio_dev, st->data,
         iio_get_time_ns(indio_dev));

 iio_trigger_notify_done(indio_dev->trig);

 gpiod_set_value(st->gpio_convst, 1);

 mutex_unlock(&st->lock);

 return IRQ_HANDLED;
}
