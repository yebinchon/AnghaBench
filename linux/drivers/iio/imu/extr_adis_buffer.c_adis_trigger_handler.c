
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iio_poll_func {int timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
struct adis {scalar_t__ current_page; int buffer; int txrx_lock; TYPE_1__* data; TYPE_2__* spi; int msg; scalar_t__* tx; } ;
typedef int irqreturn_t ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {scalar_t__ has_paging; } ;


 int ADIS_REG_PAGE_ID ;
 scalar_t__ ADIS_WRITE_REG (int ) ;
 int ENOMEM ;
 int IRQ_HANDLED ;
 int dev_err (int *,char*,int) ;
 struct adis* iio_device_get_drvdata (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int ,int ) ;
 int iio_trigger_notify_done (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_sync (TYPE_2__*,int *) ;
 int spi_write (TYPE_2__*,scalar_t__*,int) ;

__attribute__((used)) static irqreturn_t adis_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct adis *adis = iio_device_get_drvdata(indio_dev);
 int ret;

 if (!adis->buffer)
  return -ENOMEM;

 if (adis->data->has_paging) {
  mutex_lock(&adis->txrx_lock);
  if (adis->current_page != 0) {
   adis->tx[0] = ADIS_WRITE_REG(ADIS_REG_PAGE_ID);
   adis->tx[1] = 0;
   spi_write(adis->spi, adis->tx, 2);
  }
 }

 ret = spi_sync(adis->spi, &adis->msg);
 if (ret)
  dev_err(&adis->spi->dev, "Failed to read data: %d", ret);


 if (adis->data->has_paging) {
  adis->current_page = 0;
  mutex_unlock(&adis->txrx_lock);
 }

 iio_push_to_buffers_with_timestamp(indio_dev, adis->buffer,
  pf->timestamp);

 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
