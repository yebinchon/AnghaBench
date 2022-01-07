
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ina3221_data {int reg_config; int pm_dev; int regmap; } ;
struct device {int dummy; } ;


 int INA3221_CONFIG ;
 int INA3221_CONFIG_CHx_EN (int) ;
 int dev_err (struct device*,char*,...) ;
 struct ina3221_data* dev_get_drvdata (struct device*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int ina3221_write_enable(struct device *dev, int channel, bool enable)
{
 struct ina3221_data *ina = dev_get_drvdata(dev);
 u16 config, mask = INA3221_CONFIG_CHx_EN(channel);
 u16 config_old = ina->reg_config & mask;
 u32 tmp;
 int ret;

 config = enable ? mask : 0;


 if (config_old == config)
  return 0;


 if (enable) {
  ret = pm_runtime_get_sync(ina->pm_dev);
  if (ret < 0) {
   dev_err(dev, "Failed to get PM runtime\n");
   return ret;
  }
 }


 tmp = (ina->reg_config & ~mask) | (config & mask);
 ret = regmap_write(ina->regmap, INA3221_CONFIG, tmp);
 if (ret)
  goto fail;


 ina->reg_config = tmp;


 if (!enable)
  pm_runtime_put_sync(ina->pm_dev);

 return 0;

fail:
 if (enable) {
  dev_err(dev, "Failed to enable channel %d: error %d\n",
   channel, ret);
  pm_runtime_put_sync(ina->pm_dev);
 }

 return ret;
}
