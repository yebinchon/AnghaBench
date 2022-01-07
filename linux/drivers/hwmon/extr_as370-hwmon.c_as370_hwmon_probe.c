
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct as370_hwmon {int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int as370_chip_info ;
 struct device* devm_hwmon_device_register_with_info (struct device*,char*,struct as370_hwmon*,int *,int *) ;
 struct as370_hwmon* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int init_pvt (struct as370_hwmon*) ;

__attribute__((used)) static int as370_hwmon_probe(struct platform_device *pdev)
{
 struct device *hwmon_dev;
 struct as370_hwmon *hwmon;
 struct device *dev = &pdev->dev;

 hwmon = devm_kzalloc(dev, sizeof(*hwmon), GFP_KERNEL);
 if (!hwmon)
  return -ENOMEM;

 hwmon->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(hwmon->base))
  return PTR_ERR(hwmon->base);

 init_pvt(hwmon);

 hwmon_dev = devm_hwmon_device_register_with_info(dev,
        "as370",
        hwmon,
        &as370_chip_info,
        ((void*)0));
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
