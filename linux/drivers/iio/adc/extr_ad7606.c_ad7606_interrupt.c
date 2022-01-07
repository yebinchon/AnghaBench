
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ad7606_state {int completion; int trig; int gpio_convst; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;
 int gpiod_set_value (int ,int ) ;
 scalar_t__ iio_buffer_enabled (struct iio_dev*) ;
 struct ad7606_state* iio_priv (struct iio_dev*) ;
 int iio_trigger_poll_chained (int ) ;

__attribute__((used)) static irqreturn_t ad7606_interrupt(int irq, void *dev_id)
{
 struct iio_dev *indio_dev = dev_id;
 struct ad7606_state *st = iio_priv(indio_dev);

 if (iio_buffer_enabled(indio_dev)) {
  gpiod_set_value(st->gpio_convst, 0);
  iio_trigger_poll_chained(st->trig);
 } else {
  complete(&st->completion);
 }

 return IRQ_HANDLED;
}
