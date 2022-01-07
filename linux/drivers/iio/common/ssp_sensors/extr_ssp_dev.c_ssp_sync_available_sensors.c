
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssp_data {int available_sensors; TYPE_1__* spi; int mcu_dump_mode; int * delay_buf; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (int) ;
 int SSP_MSG2SSP_AP_MCU_SET_DUMPMODE ;
 int SSP_SENSOR_MAX ;
 int dev_err (int *,char*,...) ;
 int ssp_command (struct ssp_data*,int ,int ) ;
 int ssp_enable_sensor (struct ssp_data*,int,int ) ;

__attribute__((used)) static void ssp_sync_available_sensors(struct ssp_data *data)
{
 int i, ret;

 for (i = 0; i < SSP_SENSOR_MAX; ++i) {
  if (data->available_sensors & BIT(i)) {
   ret = ssp_enable_sensor(data, i, data->delay_buf[i]);
   if (ret < 0) {
    dev_err(&data->spi->dev,
     "Sync sensor nr: %d fail\n", i);
    continue;
   }
  }
 }

 ret = ssp_command(data, SSP_MSG2SSP_AP_MCU_SET_DUMPMODE,
     data->mcu_dump_mode);
 if (ret < 0)
  dev_err(&data->spi->dev,
   "SSP_MSG2SSP_AP_MCU_SET_DUMPMODE failed\n");
}
