
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ak8974_fill_buffer (struct iio_dev*) ;
 int iio_trigger_notify_done (int ) ;

__attribute__((used)) static irqreturn_t ak8974_handle_trigger(int irq, void *p)
{
 const struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;

 ak8974_fill_buffer(indio_dev);
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
