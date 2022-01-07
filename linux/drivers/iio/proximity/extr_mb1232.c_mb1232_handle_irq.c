
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb1232_data {int ranging; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;
 struct mb1232_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static irqreturn_t mb1232_handle_irq(int irq, void *dev_id)
{
 struct iio_dev *indio_dev = dev_id;
 struct mb1232_data *data = iio_priv(indio_dev);

 complete(&data->ranging);

 return IRQ_HANDLED;
}
