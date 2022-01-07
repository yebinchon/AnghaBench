
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct ad_sigma_delta {int irq_dis; int keep_cs_asserted; int bus_locked; TYPE_1__* spi; int completion; } ;
struct TYPE_2__ {int master; int irq; } ;


 int AD_SD_MODE_IDLE ;
 int HZ ;
 int ad_sigma_delta_set_mode (struct ad_sigma_delta*,int ) ;
 int disable_irq_nosync (int ) ;
 struct ad_sigma_delta* iio_device_get_drvdata (struct iio_dev*) ;
 int reinit_completion (int *) ;
 int spi_bus_unlock (int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int ad_sd_buffer_postdisable(struct iio_dev *indio_dev)
{
 struct ad_sigma_delta *sigma_delta = iio_device_get_drvdata(indio_dev);

 reinit_completion(&sigma_delta->completion);
 wait_for_completion_timeout(&sigma_delta->completion, HZ);

 if (!sigma_delta->irq_dis) {
  disable_irq_nosync(sigma_delta->spi->irq);
  sigma_delta->irq_dis = 1;
 }

 sigma_delta->keep_cs_asserted = 0;
 ad_sigma_delta_set_mode(sigma_delta, AD_SD_MODE_IDLE);

 sigma_delta->bus_locked = 0;
 return spi_bus_unlock(sigma_delta->spi->master);
}
