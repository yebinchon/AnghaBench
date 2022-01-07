
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm831x {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int PTR_ERR_OR_ZERO (struct device*) ;
 struct wm831x* dev_get_drvdata (int ) ;
 struct device* devm_hwmon_device_register_with_groups (TYPE_1__*,char*,struct wm831x*,int ) ;
 int wm831x_groups ;

__attribute__((used)) static int wm831x_hwmon_probe(struct platform_device *pdev)
{
 struct wm831x *wm831x = dev_get_drvdata(pdev->dev.parent);
 struct device *hwmon_dev;

 hwmon_dev = devm_hwmon_device_register_with_groups(&pdev->dev, "wm831x",
          wm831x,
          wm831x_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
