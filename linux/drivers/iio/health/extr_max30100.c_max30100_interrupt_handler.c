
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max30100_data {int lock; int buffer; int indio_dev; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct max30100_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers (int ,int ) ;
 int max30100_fifo_count (struct max30100_data*) ;
 int max30100_read_measurement (struct max30100_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static irqreturn_t max30100_interrupt_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct max30100_data *data = iio_priv(indio_dev);
 int ret, cnt = 0;

 mutex_lock(&data->lock);

 while (cnt || (cnt = max30100_fifo_count(data)) > 0) {
  ret = max30100_read_measurement(data);
  if (ret)
   break;

  iio_push_to_buffers(data->indio_dev, data->buffer);
  cnt--;
 }

 mutex_unlock(&data->lock);

 return IRQ_HANDLED;
}
