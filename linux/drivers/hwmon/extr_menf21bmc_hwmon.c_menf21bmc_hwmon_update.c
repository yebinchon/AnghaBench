
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menf21bmc_hwmon {int valid; int* in_val; scalar_t__ last_update; int i2c_client; } ;
struct device {int dummy; } ;


 int BMC_VOLT_COUNT ;
 struct menf21bmc_hwmon* ERR_PTR (int) ;
 scalar_t__ HZ ;
 int IDX_TO_VOLT_INP_CMD (int) ;
 struct menf21bmc_hwmon* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_word_data (int ,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct menf21bmc_hwmon *menf21bmc_hwmon_update(struct device *dev)
{
 int i;
 int val;
 struct menf21bmc_hwmon *drv_data = dev_get_drvdata(dev);
 struct menf21bmc_hwmon *data_ret = drv_data;

 if (time_after(jiffies, drv_data->last_update + HZ)
     || !drv_data->valid) {
  for (i = 0; i < BMC_VOLT_COUNT; i++) {
   val = i2c_smbus_read_word_data(drv_data->i2c_client,
             IDX_TO_VOLT_INP_CMD(i));
   if (val < 0) {
    data_ret = ERR_PTR(val);
    goto abort;
   }
   drv_data->in_val[i] = val;
  }
  drv_data->last_update = jiffies;
  drv_data->valid = 1;
 }
abort:
 return data_ret;
}
