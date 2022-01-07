
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_device {int dev; int regulator; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int ,char*,int) ;
 int devm_regulator_get (int ,char*) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int panfrost_regulator_init(struct panfrost_device *pfdev)
{
 int ret;

 pfdev->regulator = devm_regulator_get(pfdev->dev, "mali");
 if (IS_ERR(pfdev->regulator)) {
  ret = PTR_ERR(pfdev->regulator);
  dev_err(pfdev->dev, "failed to get regulator: %d\n", ret);
  return ret;
 }

 ret = regulator_enable(pfdev->regulator);
 if (ret < 0) {
  dev_err(pfdev->dev, "failed to enable regulator: %d\n", ret);
  return ret;
 }

 return 0;
}
