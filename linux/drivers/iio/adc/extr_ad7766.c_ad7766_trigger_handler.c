
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_poll_func {int timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
struct ad7766 {int data; int msg; int spi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct ad7766* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int ,int ) ;
 int iio_trigger_notify_done (int ) ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static irqreturn_t ad7766_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct ad7766 *ad7766 = iio_priv(indio_dev);
 int ret;

 ret = spi_sync(ad7766->spi, &ad7766->msg);
 if (ret < 0)
  goto done;

 iio_push_to_buffers_with_timestamp(indio_dev, ad7766->data,
  pf->timestamp);
done:
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
