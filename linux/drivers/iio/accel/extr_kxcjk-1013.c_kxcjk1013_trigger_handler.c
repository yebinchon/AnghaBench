
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kxcjk1013_data {int timestamp; scalar_t__ buffer; int mutex; int client; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
typedef int irqreturn_t ;


 int AXIS_MAX ;
 int IRQ_HANDLED ;
 int KXCJK1013_REG_XOUT_L ;
 int i2c_smbus_read_i2c_block_data_or_emulated (int ,int ,int,int *) ;
 struct kxcjk1013_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,scalar_t__,int ) ;
 int iio_trigger_notify_done (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static irqreturn_t kxcjk1013_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct kxcjk1013_data *data = iio_priv(indio_dev);
 int ret;

 mutex_lock(&data->mutex);
 ret = i2c_smbus_read_i2c_block_data_or_emulated(data->client,
       KXCJK1013_REG_XOUT_L,
       AXIS_MAX * 2,
       (u8 *)data->buffer);
 mutex_unlock(&data->mutex);
 if (ret < 0)
  goto err;

 iio_push_to_buffers_with_timestamp(indio_dev, data->buffer,
        data->timestamp);
err:
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
