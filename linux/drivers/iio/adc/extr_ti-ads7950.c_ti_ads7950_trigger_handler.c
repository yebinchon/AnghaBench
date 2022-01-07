
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_ads7950_state {int slock; int * rx_buf; int ring_msg; int spi; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct ti_ads7950_state* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int iio_trigger_notify_done (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static irqreturn_t ti_ads7950_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct ti_ads7950_state *st = iio_priv(indio_dev);
 int ret;

 mutex_lock(&st->slock);
 ret = spi_sync(st->spi, &st->ring_msg);
 if (ret < 0)
  goto out;

 iio_push_to_buffers_with_timestamp(indio_dev, &st->rx_buf[2],
        iio_get_time_ns(indio_dev));

out:
 mutex_unlock(&st->slock);
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
