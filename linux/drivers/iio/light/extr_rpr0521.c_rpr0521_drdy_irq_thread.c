
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpr0521_data {int drdy_trigger0; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 struct rpr0521_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_poll_chained (int ) ;
 scalar_t__ rpr0521_is_triggered (struct rpr0521_data*) ;

__attribute__((used)) static irqreturn_t rpr0521_drdy_irq_thread(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct rpr0521_data *data = iio_priv(indio_dev);

 if (rpr0521_is_triggered(data)) {
  iio_trigger_poll_chained(data->drdy_trigger0);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
