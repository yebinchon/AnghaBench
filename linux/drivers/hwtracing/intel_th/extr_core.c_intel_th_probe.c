
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_th_driver {int (* probe ) (struct intel_th_device*) ;int (* assign ) (struct intel_th_device*,struct intel_th_device*) ;int (* remove ) (struct intel_th_device*) ;scalar_t__ attr_group; } ;
struct TYPE_2__ {int kobj; int driver; } ;
struct intel_th_device {scalar_t__ type; TYPE_1__ dev; } ;
struct device {struct device* parent; int driver; } ;


 int EPROBE_DEFER ;
 scalar_t__ INTEL_TH_OUTPUT ;
 scalar_t__ INTEL_TH_SWITCH ;
 int intel_th_output_assigned (struct intel_th_device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_no_callbacks (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int stub1 (struct intel_th_device*) ;
 int stub2 (struct intel_th_device*,struct intel_th_device*) ;
 int stub3 (struct intel_th_device*) ;
 int sysfs_create_group (int *,scalar_t__) ;
 struct intel_th_device* to_intel_th_device (struct device*) ;
 struct intel_th_driver* to_intel_th_driver (int ) ;

__attribute__((used)) static int intel_th_probe(struct device *dev)
{
 struct intel_th_driver *thdrv = to_intel_th_driver(dev->driver);
 struct intel_th_device *thdev = to_intel_th_device(dev);
 struct intel_th_driver *hubdrv;
 struct intel_th_device *hub = ((void*)0);
 int ret;

 if (thdev->type == INTEL_TH_SWITCH)
  hub = thdev;
 else if (dev->parent)
  hub = to_intel_th_device(dev->parent);

 if (!hub || !hub->dev.driver)
  return -EPROBE_DEFER;

 hubdrv = to_intel_th_driver(hub->dev.driver);

 pm_runtime_set_active(dev);
 pm_runtime_no_callbacks(dev);
 pm_runtime_enable(dev);

 ret = thdrv->probe(to_intel_th_device(dev));
 if (ret)
  goto out_pm;

 if (thdrv->attr_group) {
  ret = sysfs_create_group(&thdev->dev.kobj, thdrv->attr_group);
  if (ret)
   goto out;
 }

 if (thdev->type == INTEL_TH_OUTPUT &&
     !intel_th_output_assigned(thdev))

  ret = hubdrv->assign(hub, thdev);

out:
 if (ret)
  thdrv->remove(thdev);

out_pm:
 if (ret)
  pm_runtime_disable(dev);

 return ret;
}
