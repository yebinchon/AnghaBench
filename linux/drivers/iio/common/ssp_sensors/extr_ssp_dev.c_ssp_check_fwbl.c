
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssp_data {scalar_t__ cur_firm_rev; TYPE_2__* sensorhub_info; TYPE_1__* spi; } ;
struct TYPE_4__ {scalar_t__ fw_rev; } ;
struct TYPE_3__ {int dev; } ;


 int SSP_FW_DL_STATE_NEED_TO_SCHEDULE ;
 int SSP_FW_DL_STATE_NONE ;
 scalar_t__ SSP_INVALID_REVISION ;
 scalar_t__ SSP_INVALID_REVISION2 ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,scalar_t__,scalar_t__) ;
 int dev_warn (int *,char*,int) ;
 scalar_t__ ssp_get_firmware_rev (struct ssp_data*) ;

__attribute__((used)) static int ssp_check_fwbl(struct ssp_data *data)
{
 int retries = 0;

 while (retries++ < 5) {
  data->cur_firm_rev = ssp_get_firmware_rev(data);
  if (data->cur_firm_rev == SSP_INVALID_REVISION ||
      data->cur_firm_rev == SSP_INVALID_REVISION2) {
   dev_warn(&data->spi->dev,
     "Invalid revision, trying %d time\n", retries);
  } else {
   break;
  }
 }

 if (data->cur_firm_rev == SSP_INVALID_REVISION ||
     data->cur_firm_rev == SSP_INVALID_REVISION2) {
  dev_err(&data->spi->dev, "SSP_INVALID_REVISION\n");
  return SSP_FW_DL_STATE_NEED_TO_SCHEDULE;
 }

 dev_info(&data->spi->dev,
   "MCU Firm Rev : Old = %8u, New = %8u\n",
   data->cur_firm_rev,
   data->sensorhub_info->fw_rev);

 if (data->cur_firm_rev != data->sensorhub_info->fw_rev)
  return SSP_FW_DL_STATE_NEED_TO_SCHEDULE;

 return SSP_FW_DL_STATE_NONE;
}
