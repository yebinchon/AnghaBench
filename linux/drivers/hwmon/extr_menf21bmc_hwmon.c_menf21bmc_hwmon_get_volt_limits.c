
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menf21bmc_hwmon {int* in_min; int* in_max; int i2c_client; } ;


 int BMC_VOLT_COUNT ;
 int IDX_TO_VOLT_MAX_CMD (int) ;
 int IDX_TO_VOLT_MIN_CMD (int) ;
 int i2c_smbus_read_word_data (int ,int ) ;

__attribute__((used)) static int menf21bmc_hwmon_get_volt_limits(struct menf21bmc_hwmon *drv_data)
{
 int i, val;

 for (i = 0; i < BMC_VOLT_COUNT; i++) {
  val = i2c_smbus_read_word_data(drv_data->i2c_client,
            IDX_TO_VOLT_MIN_CMD(i));
  if (val < 0)
   return val;

  drv_data->in_min[i] = val;

  val = i2c_smbus_read_word_data(drv_data->i2c_client,
            IDX_TO_VOLT_MAX_CMD(i));
  if (val < 0)
   return val;

  drv_data->in_max[i] = val;
 }
 return 0;
}
