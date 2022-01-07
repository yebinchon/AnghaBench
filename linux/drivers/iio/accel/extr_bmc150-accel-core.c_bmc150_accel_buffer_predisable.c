
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {scalar_t__ currentmode; } ;
struct bmc150_accel_data {int mutex; scalar_t__ fifo_mode; } ;


 int BMC150_ACCEL_FIFO_LENGTH ;
 int BMC150_ACCEL_INT_WATERMARK ;
 scalar_t__ INDIO_BUFFER_TRIGGERED ;
 int __bmc150_accel_fifo_flush (struct iio_dev*,int ,int) ;
 int bmc150_accel_fifo_set_mode (struct bmc150_accel_data*) ;
 int bmc150_accel_set_interrupt (struct bmc150_accel_data*,int ,int) ;
 struct bmc150_accel_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_predisable (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bmc150_accel_buffer_predisable(struct iio_dev *indio_dev)
{
 struct bmc150_accel_data *data = iio_priv(indio_dev);

 if (indio_dev->currentmode == INDIO_BUFFER_TRIGGERED)
  return iio_triggered_buffer_predisable(indio_dev);

 mutex_lock(&data->mutex);

 if (!data->fifo_mode)
  goto out;

 bmc150_accel_set_interrupt(data, BMC150_ACCEL_INT_WATERMARK, 0);
 __bmc150_accel_fifo_flush(indio_dev, BMC150_ACCEL_FIFO_LENGTH, 0);
 data->fifo_mode = 0;
 bmc150_accel_fifo_set_mode(data);

out:
 mutex_unlock(&data->mutex);

 return 0;
}
