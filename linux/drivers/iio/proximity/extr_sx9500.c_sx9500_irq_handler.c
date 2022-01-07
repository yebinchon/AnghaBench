
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx9500_data {int trig; scalar_t__ trigger_enabled; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 struct sx9500_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_poll (int ) ;

__attribute__((used)) static irqreturn_t sx9500_irq_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct sx9500_data *data = iio_priv(indio_dev);

 if (data->trigger_enabled)
  iio_trigger_poll(data->trig);







 return IRQ_WAKE_THREAD;
}
