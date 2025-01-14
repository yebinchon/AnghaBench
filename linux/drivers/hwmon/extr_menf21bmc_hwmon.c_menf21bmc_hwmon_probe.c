
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct menf21bmc_hwmon {struct i2c_client* i2c_client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*) ;
 struct device* devm_hwmon_device_register_with_groups (TYPE_1__*,char*,struct menf21bmc_hwmon*,int ) ;
 struct menf21bmc_hwmon* devm_kzalloc (TYPE_1__*,int,int ) ;
 int menf21bmc_hwmon_get_volt_limits (struct menf21bmc_hwmon*) ;
 int menf21bmc_hwmon_groups ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static int menf21bmc_hwmon_probe(struct platform_device *pdev)
{
 int ret;
 struct menf21bmc_hwmon *drv_data;
 struct i2c_client *i2c_client = to_i2c_client(pdev->dev.parent);
 struct device *hwmon_dev;

 drv_data = devm_kzalloc(&pdev->dev, sizeof(struct menf21bmc_hwmon),
    GFP_KERNEL);
 if (!drv_data)
  return -ENOMEM;

 drv_data->i2c_client = i2c_client;

 ret = menf21bmc_hwmon_get_volt_limits(drv_data);
 if (ret) {
  dev_err(&pdev->dev, "failed to read sensor limits");
  return ret;
 }

 hwmon_dev = devm_hwmon_device_register_with_groups(&pdev->dev,
         "menf21bmc", drv_data,
         menf21bmc_hwmon_groups);
 if (IS_ERR(hwmon_dev))
  return PTR_ERR(hwmon_dev);

 dev_info(&pdev->dev, "MEN 14F021P00 BMC hwmon device enabled");

 return 0;
}
