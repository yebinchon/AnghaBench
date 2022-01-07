
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxas21002c_data {int regmap; } ;
struct device {int dummy; } ;


 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 struct device* regmap_get_device (int ) ;

__attribute__((used)) static int fxas21002c_pm_get(struct fxas21002c_data *data)
{
 struct device *dev = regmap_get_device(data->regmap);
 int ret;

 ret = pm_runtime_get_sync(dev);
 if (ret < 0)
  pm_runtime_put_noidle(dev);

 return ret;
}
