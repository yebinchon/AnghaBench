
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_poll_func {int timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
struct TYPE_2__ {int sample; } ;
struct ad7266_state {TYPE_1__ data; int spi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct ad7266_state* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,TYPE_1__*,int ) ;
 int iio_trigger_notify_done (int ) ;
 int spi_read (int ,int ,int) ;

__attribute__((used)) static irqreturn_t ad7266_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct ad7266_state *st = iio_priv(indio_dev);
 int ret;

 ret = spi_read(st->spi, st->data.sample, 4);
 if (ret == 0) {
  iio_push_to_buffers_with_timestamp(indio_dev, &st->data,
       pf->timestamp);
 }

 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
