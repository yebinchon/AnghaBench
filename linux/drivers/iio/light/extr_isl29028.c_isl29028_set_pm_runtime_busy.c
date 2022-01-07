
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29028_chip {int regmap; } ;
struct device {int dummy; } ;


 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 struct device* regmap_get_device (int ) ;

__attribute__((used)) static int isl29028_set_pm_runtime_busy(struct isl29028_chip *chip, bool on)
{
 struct device *dev = regmap_get_device(chip->regmap);
 int ret;

 if (on) {
  ret = pm_runtime_get_sync(dev);
  if (ret < 0)
   pm_runtime_put_noidle(dev);
 } else {
  pm_runtime_mark_last_busy(dev);
  ret = pm_runtime_put_autosuspend(dev);
 }

 return ret;
}
