
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct adis_data {scalar_t__ has_paging; } ;
struct adis {int current_page; struct adis_data const* data; struct spi_device* spi; int txrx_lock; } ;


 int adis_enable_irq (struct adis*,int) ;
 int iio_device_set_drvdata (struct iio_dev*,struct adis*) ;
 int mutex_init (int *) ;

int adis_init(struct adis *adis, struct iio_dev *indio_dev,
 struct spi_device *spi, const struct adis_data *data)
{
 mutex_init(&adis->txrx_lock);
 adis->spi = spi;
 adis->data = data;
 iio_device_set_drvdata(indio_dev, adis);

 if (data->has_paging) {

  adis->current_page = -1;
 } else {

  adis->current_page = 0;
 }

 return adis_enable_irq(adis, 0);
}
