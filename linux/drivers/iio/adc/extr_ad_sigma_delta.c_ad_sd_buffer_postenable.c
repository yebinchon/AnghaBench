
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {TYPE_1__* channels; int masklength; int active_scan_mask; } ;
struct ad_sigma_delta {int bus_locked; int keep_cs_asserted; int irq_dis; TYPE_2__* spi; } ;
struct TYPE_4__ {int master; int irq; } ;
struct TYPE_3__ {int address; } ;


 int AD_SD_MODE_CONTINUOUS ;
 int ad_sigma_delta_set_channel (struct ad_sigma_delta*,int ) ;
 int ad_sigma_delta_set_mode (struct ad_sigma_delta*,int ) ;
 int enable_irq (int ) ;
 unsigned int find_first_bit (int ,int ) ;
 struct ad_sigma_delta* iio_device_get_drvdata (struct iio_dev*) ;
 int iio_triggered_buffer_postenable (struct iio_dev*) ;
 int spi_bus_lock (int ) ;
 int spi_bus_unlock (int ) ;

__attribute__((used)) static int ad_sd_buffer_postenable(struct iio_dev *indio_dev)
{
 struct ad_sigma_delta *sigma_delta = iio_device_get_drvdata(indio_dev);
 unsigned int channel;
 int ret;

 ret = iio_triggered_buffer_postenable(indio_dev);
 if (ret < 0)
  return ret;

 channel = find_first_bit(indio_dev->active_scan_mask,
     indio_dev->masklength);
 ret = ad_sigma_delta_set_channel(sigma_delta,
  indio_dev->channels[channel].address);
 if (ret)
  return ret;

 spi_bus_lock(sigma_delta->spi->master);
 sigma_delta->bus_locked = 1;
 sigma_delta->keep_cs_asserted = 1;

 ret = ad_sigma_delta_set_mode(sigma_delta, AD_SD_MODE_CONTINUOUS);
 if (ret)
  goto err_unlock;

 sigma_delta->irq_dis = 0;
 enable_irq(sigma_delta->spi->irq);

 return 0;

err_unlock:
 spi_bus_unlock(sigma_delta->spi->master);

 return ret;
}
