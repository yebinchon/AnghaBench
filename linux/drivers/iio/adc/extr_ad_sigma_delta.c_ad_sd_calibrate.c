
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad_sigma_delta {int bus_locked; int keep_cs_asserted; int irq_dis; TYPE_1__* spi; int completion; } ;
struct TYPE_2__ {int master; int irq; } ;


 unsigned int AD_SD_MODE_IDLE ;
 int EIO ;
 int HZ ;
 int ad_sigma_delta_set_channel (struct ad_sigma_delta*,unsigned int) ;
 int ad_sigma_delta_set_mode (struct ad_sigma_delta*,unsigned int) ;
 int disable_irq_nosync (int ) ;
 int enable_irq (int ) ;
 int reinit_completion (int *) ;
 int spi_bus_lock (int ) ;
 int spi_bus_unlock (int ) ;
 unsigned long wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int ad_sd_calibrate(struct ad_sigma_delta *sigma_delta,
 unsigned int mode, unsigned int channel)
{
 int ret;
 unsigned long timeout;

 ret = ad_sigma_delta_set_channel(sigma_delta, channel);
 if (ret)
  return ret;

 spi_bus_lock(sigma_delta->spi->master);
 sigma_delta->bus_locked = 1;
 sigma_delta->keep_cs_asserted = 1;
 reinit_completion(&sigma_delta->completion);

 ret = ad_sigma_delta_set_mode(sigma_delta, mode);
 if (ret < 0)
  goto out;

 sigma_delta->irq_dis = 0;
 enable_irq(sigma_delta->spi->irq);
 timeout = wait_for_completion_timeout(&sigma_delta->completion, 2 * HZ);
 if (timeout == 0) {
  sigma_delta->irq_dis = 1;
  disable_irq_nosync(sigma_delta->spi->irq);
  ret = -EIO;
 } else {
  ret = 0;
 }
out:
 sigma_delta->keep_cs_asserted = 0;
 ad_sigma_delta_set_mode(sigma_delta, AD_SD_MODE_IDLE);
 sigma_delta->bus_locked = 0;
 spi_bus_unlock(sigma_delta->spi->master);

 return ret;
}
