
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int dummy; } ;
struct platform_device {int dev; } ;
struct device {int dummy; } ;


 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (int *,char*,struct wm8350*,int ) ;
 struct wm8350* platform_get_drvdata (struct platform_device*) ;
 int wm8350_groups ;

__attribute__((used)) static int wm8350_hwmon_probe(struct platform_device *pdev)
{
 struct wm8350 *wm8350 = platform_get_drvdata(pdev);
 struct device *hwmon_dev;

 hwmon_dev = devm_hwmon_device_register_with_groups(&pdev->dev, "wm8350",
          wm8350,
          wm8350_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
