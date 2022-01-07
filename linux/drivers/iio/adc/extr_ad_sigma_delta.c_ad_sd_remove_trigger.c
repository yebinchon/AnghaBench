
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct ad_sigma_delta {int trig; TYPE_1__* spi; } ;
struct TYPE_2__ {int irq; } ;


 int free_irq (int ,struct ad_sigma_delta*) ;
 struct ad_sigma_delta* iio_device_get_drvdata (struct iio_dev*) ;
 int iio_trigger_free (int ) ;
 int iio_trigger_unregister (int ) ;

__attribute__((used)) static void ad_sd_remove_trigger(struct iio_dev *indio_dev)
{
 struct ad_sigma_delta *sigma_delta = iio_device_get_drvdata(indio_dev);

 iio_trigger_unregister(sigma_delta->trig);
 free_irq(sigma_delta->spi->irq, sigma_delta);
 iio_trigger_free(sigma_delta->trig);
}
