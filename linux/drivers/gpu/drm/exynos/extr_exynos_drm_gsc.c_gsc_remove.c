
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int pm_runtime_disable (struct device*) ;
 int pm_runtime_dont_use_autosuspend (struct device*) ;

__attribute__((used)) static int gsc_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;

 pm_runtime_dont_use_autosuspend(dev);
 pm_runtime_disable(dev);

 return 0;
}
