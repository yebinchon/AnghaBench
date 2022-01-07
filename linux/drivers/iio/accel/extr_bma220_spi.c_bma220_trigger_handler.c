
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct iio_poll_func {int timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
struct bma220_data {int* tx_buf; int lock; int buffer; struct spi_device* spi_device; } ;
typedef int irqreturn_t ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int BMA220_READ_MASK ;
 int BMA220_REG_ACCEL_X ;
 int IRQ_HANDLED ;
 int bma220_channels ;
 struct bma220_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int ,int ) ;
 int iio_trigger_notify_done (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_write_then_read (struct spi_device*,int*,int,int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t bma220_trigger_handler(int irq, void *p)
{
 int ret;
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct bma220_data *data = iio_priv(indio_dev);
 struct spi_device *spi = data->spi_device;

 mutex_lock(&data->lock);
 data->tx_buf[0] = BMA220_REG_ACCEL_X | BMA220_READ_MASK;
 ret = spi_write_then_read(spi, data->tx_buf, 1, data->buffer,
      ARRAY_SIZE(bma220_channels) - 1);
 if (ret < 0)
  goto err;

 iio_push_to_buffers_with_timestamp(indio_dev, data->buffer,
        pf->timestamp);
err:
 mutex_unlock(&data->lock);
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
