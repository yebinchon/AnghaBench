
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxas21002c_data {int regmap; } ;
struct device {int dummy; } ;


 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 struct device* regmap_get_device (int ) ;

__attribute__((used)) static int fxas21002c_pm_put(struct fxas21002c_data *data)
{
 struct device *dev = regmap_get_device(data->regmap);

 pm_runtime_mark_last_busy(dev);

 return pm_runtime_put_autosuspend(dev);
}
