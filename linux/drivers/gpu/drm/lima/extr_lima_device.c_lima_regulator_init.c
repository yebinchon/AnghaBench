
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_device {int dev; int * regulator; } ;


 int ENODEV ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_err (int ,char*,int) ;
 int * devm_regulator_get_optional (int ,char*) ;
 int regulator_enable (int *) ;

__attribute__((used)) static int lima_regulator_init(struct lima_device *dev)
{
 int ret;

 dev->regulator = devm_regulator_get_optional(dev->dev, "mali");
 if (IS_ERR(dev->regulator)) {
  ret = PTR_ERR(dev->regulator);
  dev->regulator = ((void*)0);
  if (ret == -ENODEV)
   return 0;
  if (ret != -EPROBE_DEFER)
   dev_err(dev->dev, "failed to get regulator: %d\n", ret);
  return ret;
 }

 ret = regulator_enable(dev->regulator);
 if (ret < 0) {
  dev_err(dev->dev, "failed to enable regulator: %d\n", ret);
  return ret;
 }

 return 0;
}
