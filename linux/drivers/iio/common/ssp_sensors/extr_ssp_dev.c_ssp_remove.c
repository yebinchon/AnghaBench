
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssp_data {int pending_lock; int comm_lock; int work_wdt; int wdt_timer; TYPE_1__* spi; } ;
struct spi_device {int dev; } ;
struct TYPE_2__ {int irq; int dev; } ;


 int SSP_MSG2SSP_AP_STATUS_SHUTDOWN ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int dev_err (int *,char*) ;
 int free_irq (int ,struct ssp_data*) ;
 int mfd_remove_devices (int *) ;
 int mutex_destroy (int *) ;
 struct ssp_data* spi_get_drvdata (struct spi_device*) ;
 int ssp_clean_pending_list (struct ssp_data*) ;
 scalar_t__ ssp_command (struct ssp_data*,int ,int ) ;
 int ssp_disable_wdt_timer (struct ssp_data*) ;
 int ssp_enable_mcu (struct ssp_data*,int) ;

__attribute__((used)) static int ssp_remove(struct spi_device *spi)
{
 struct ssp_data *data = spi_get_drvdata(spi);

 if (ssp_command(data, SSP_MSG2SSP_AP_STATUS_SHUTDOWN, 0) < 0)
  dev_err(&data->spi->dev,
   "SSP_MSG2SSP_AP_STATUS_SHUTDOWN failed\n");

 ssp_enable_mcu(data, 0);
 ssp_disable_wdt_timer(data);

 ssp_clean_pending_list(data);

 free_irq(data->spi->irq, data);

 del_timer_sync(&data->wdt_timer);
 cancel_work_sync(&data->work_wdt);

 mutex_destroy(&data->comm_lock);
 mutex_destroy(&data->pending_lock);

 mfd_remove_devices(&spi->dev);

 return 0;
}
