
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct adis {int xfer; int buffer; TYPE_1__* spi; } ;
struct TYPE_2__ {scalar_t__ irq; } ;


 int adis_remove_trigger (struct adis*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int kfree (int ) ;

void adis_cleanup_buffer_and_trigger(struct adis *adis,
 struct iio_dev *indio_dev)
{
 if (adis->spi->irq)
  adis_remove_trigger(adis);
 kfree(adis->buffer);
 kfree(adis->xfer);
 iio_triggered_buffer_cleanup(indio_dev);
}
