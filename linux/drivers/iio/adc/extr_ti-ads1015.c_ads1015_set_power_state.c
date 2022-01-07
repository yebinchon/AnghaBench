
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ads1015_data {int regmap; } ;


 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 struct device* regmap_get_device (int ) ;

__attribute__((used)) static int ads1015_set_power_state(struct ads1015_data *data, bool on)
{
 int ret;
 struct device *dev = regmap_get_device(data->regmap);

 if (on) {
  ret = pm_runtime_get_sync(dev);
  if (ret < 0)
   pm_runtime_put_noidle(dev);
 } else {
  pm_runtime_mark_last_busy(dev);
  ret = pm_runtime_put_autosuspend(dev);
 }

 return ret < 0 ? ret : 0;
}
