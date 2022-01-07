
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ccs811_data {int drdy_trig; scalar_t__ drdy_trig_on; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct ccs811_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_poll (int ) ;

__attribute__((used)) static irqreturn_t ccs811_data_rdy_trigger_poll(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct ccs811_data *data = iio_priv(indio_dev);

 if (data->drdy_trig_on)
  iio_trigger_poll(data->drdy_trig);

 return IRQ_HANDLED;
}
