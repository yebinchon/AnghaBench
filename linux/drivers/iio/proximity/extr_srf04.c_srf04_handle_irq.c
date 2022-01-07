
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srf04_data {int falling; void* ts_falling; int rising; void* ts_rising; int gpiod_echo; } ;
struct iio_dev {int dummy; } ;
typedef void* ktime_t ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;
 scalar_t__ gpiod_get_value (int ) ;
 struct srf04_data* iio_priv (struct iio_dev*) ;
 void* ktime_get () ;

__attribute__((used)) static irqreturn_t srf04_handle_irq(int irq, void *dev_id)
{
 struct iio_dev *indio_dev = dev_id;
 struct srf04_data *data = iio_priv(indio_dev);
 ktime_t now = ktime_get();

 if (gpiod_get_value(data->gpiod_echo)) {
  data->ts_rising = now;
  complete(&data->rising);
 } else {
  data->ts_falling = now;
  complete(&data->falling);
 }

 return IRQ_HANDLED;
}
