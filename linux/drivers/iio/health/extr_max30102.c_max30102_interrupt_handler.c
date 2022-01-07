
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max30102_data {int lock; int processed_buffer; int indio_dev; } ;
struct iio_dev {int masklength; int active_scan_mask; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int bitmap_weight (int ,int ) ;
 struct max30102_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers (int ,int ) ;
 int max30102_fifo_count (struct max30102_data*) ;
 int max30102_read_measurement (struct max30102_data*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static irqreturn_t max30102_interrupt_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct max30102_data *data = iio_priv(indio_dev);
 unsigned int measurements = bitmap_weight(indio_dev->active_scan_mask,
        indio_dev->masklength);
 int ret, cnt = 0;

 mutex_lock(&data->lock);

 while (cnt || (cnt = max30102_fifo_count(data)) > 0) {
  ret = max30102_read_measurement(data, measurements);
  if (ret)
   break;

  iio_push_to_buffers(data->indio_dev, data->processed_buffer);
  cnt--;
 }

 mutex_unlock(&data->lock);

 return IRQ_HANDLED;
}
