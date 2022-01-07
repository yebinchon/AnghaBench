
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int component_del (struct device*,int *) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_dont_use_autosuspend (struct device*) ;
 int rotator_component_ops ;

__attribute__((used)) static int rotator_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;

 component_del(dev, &rotator_component_ops);
 pm_runtime_dont_use_autosuspend(dev);
 pm_runtime_disable(dev);

 return 0;
}
