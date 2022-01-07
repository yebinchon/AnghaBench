
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
struct bmc150_accel_data {int mutex; int regmap; scalar_t__ ev_enable_state; scalar_t__ fifo_mode; } ;
typedef int irqreturn_t ;


 int BMC150_ACCEL_FIFO_LENGTH ;
 int BMC150_ACCEL_INT_MODE_LATCH_INT ;
 int BMC150_ACCEL_INT_MODE_LATCH_RESET ;
 int BMC150_ACCEL_REG_INT_RST_LATCH ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int __bmc150_accel_fifo_flush (struct iio_dev*,int ,int) ;
 int bmc150_accel_handle_roc_event (struct iio_dev*) ;
 int dev_err (struct device*,char*) ;
 struct bmc150_accel_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct device* regmap_get_device (int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static irqreturn_t bmc150_accel_irq_thread_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct bmc150_accel_data *data = iio_priv(indio_dev);
 struct device *dev = regmap_get_device(data->regmap);
 bool ack = 0;
 int ret;

 mutex_lock(&data->mutex);

 if (data->fifo_mode) {
  ret = __bmc150_accel_fifo_flush(indio_dev,
      BMC150_ACCEL_FIFO_LENGTH, 1);
  if (ret > 0)
   ack = 1;
 }

 if (data->ev_enable_state) {
  ret = bmc150_accel_handle_roc_event(indio_dev);
  if (ret > 0)
   ack = 1;
 }

 if (ack) {
  ret = regmap_write(data->regmap, BMC150_ACCEL_REG_INT_RST_LATCH,
       BMC150_ACCEL_INT_MODE_LATCH_INT |
       BMC150_ACCEL_INT_MODE_LATCH_RESET);
  if (ret)
   dev_err(dev, "Error writing reg_int_rst_latch\n");

  ret = IRQ_HANDLED;
 } else {
  ret = IRQ_NONE;
 }

 mutex_unlock(&data->mutex);

 return ret;
}
