
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
struct ad7298_state {int rx_buf; int ring_msg; int spi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct ad7298_state* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int ,int ) ;
 int iio_trigger_notify_done (int ) ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static irqreturn_t ad7298_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct ad7298_state *st = iio_priv(indio_dev);
 int b_sent;

 b_sent = spi_sync(st->spi, &st->ring_msg);
 if (b_sent)
  goto done;

 iio_push_to_buffers_with_timestamp(indio_dev, st->rx_buf,
  iio_get_time_ns(indio_dev));

done:
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
