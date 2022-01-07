
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk8312_data {int dready_trig; scalar_t__ dready_trigger_on; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct stk8312_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_poll (int ) ;

__attribute__((used)) static irqreturn_t stk8312_data_rdy_trig_poll(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct stk8312_data *data = iio_priv(indio_dev);

 if (data->dready_trigger_on)
  iio_trigger_poll(data->dready_trig);

 return IRQ_HANDLED;
}
