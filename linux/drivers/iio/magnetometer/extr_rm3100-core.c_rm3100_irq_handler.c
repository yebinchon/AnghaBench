
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rm3100_data {int drdy_trig; int measuring_done; } ;
struct TYPE_2__ {int parent; } ;
struct iio_dev {int currentmode; TYPE_1__ dev; } ;
typedef int irqreturn_t ;




 int IRQ_WAKE_THREAD ;
 int complete (int *) ;
 int dev_err (int ,char*,int) ;
 struct rm3100_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_poll (int ) ;

__attribute__((used)) static irqreturn_t rm3100_irq_handler(int irq, void *d)
{
 struct iio_dev *indio_dev = d;
 struct rm3100_data *data = iio_priv(indio_dev);

 switch (indio_dev->currentmode) {
 case 128:
  complete(&data->measuring_done);
  break;
 case 129:
  iio_trigger_poll(data->drdy_trig);
  break;
 default:
  dev_err(indio_dev->dev.parent,
   "device mode out of control, current mode: %d",
   indio_dev->currentmode);
 }

 return IRQ_WAKE_THREAD;
}
