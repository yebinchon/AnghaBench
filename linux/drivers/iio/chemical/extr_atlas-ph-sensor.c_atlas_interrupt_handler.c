
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct atlas_data {int work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct atlas_data* iio_priv (struct iio_dev*) ;
 int irq_work_queue (int *) ;

__attribute__((used)) static irqreturn_t atlas_interrupt_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct atlas_data *data = iio_priv(indio_dev);

 irq_work_queue(&data->work);

 return IRQ_HANDLED;
}
