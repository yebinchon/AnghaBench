
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
struct TYPE_2__ {int d32; } ;
struct ad7768_state {int lock; TYPE_1__ data; int spi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct ad7768_state* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int iio_trigger_notify_done (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_read (int ,int *,int) ;

__attribute__((used)) static irqreturn_t ad7768_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct ad7768_state *st = iio_priv(indio_dev);
 int ret;

 mutex_lock(&st->lock);

 ret = spi_read(st->spi, &st->data.d32, 3);
 if (ret < 0)
  goto err_unlock;

 iio_push_to_buffers_with_timestamp(indio_dev, &st->data.d32,
        iio_get_time_ns(indio_dev));

 iio_trigger_notify_done(indio_dev->trig);
err_unlock:
 mutex_unlock(&st->lock);

 return IRQ_HANDLED;
}
