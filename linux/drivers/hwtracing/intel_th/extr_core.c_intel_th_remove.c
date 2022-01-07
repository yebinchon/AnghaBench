
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_th_driver {int (* unassign ) (struct intel_th_device*,struct intel_th_device*) ;int (* remove ) (struct intel_th_device*) ;scalar_t__ attr_group; } ;
struct TYPE_5__ {scalar_t__ driver; int kobj; } ;
struct intel_th_device {scalar_t__ type; TYPE_2__ dev; } ;
struct intel_th {int num_thdevs; TYPE_3__** thdev; } ;
struct device {TYPE_1__* parent; int driver; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_4__ {int driver; } ;


 scalar_t__ INTEL_TH_OUTPUT ;
 scalar_t__ INTEL_TH_SWITCH ;
 int device_for_each_child (struct device*,struct intel_th_device*,int ) ;
 int intel_th_child_remove ;
 int intel_th_device_remove (TYPE_3__*) ;
 scalar_t__ intel_th_output_assigned (struct intel_th_device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int stub1 (struct intel_th_device*) ;
 int stub2 (struct intel_th_device*,struct intel_th_device*) ;
 int sysfs_remove_group (int *,scalar_t__) ;
 struct intel_th* to_intel_th (struct intel_th_device*) ;
 struct intel_th_device* to_intel_th_device (struct device*) ;
 struct intel_th_driver* to_intel_th_driver (int ) ;
 struct intel_th_device* to_intel_th_hub (struct intel_th_device*) ;

__attribute__((used)) static int intel_th_remove(struct device *dev)
{
 struct intel_th_driver *thdrv = to_intel_th_driver(dev->driver);
 struct intel_th_device *thdev = to_intel_th_device(dev);
 struct intel_th_device *hub = to_intel_th_hub(thdev);
 int err;

 if (thdev->type == INTEL_TH_SWITCH) {
  struct intel_th *th = to_intel_th(hub);
  int i, lowest;


  err = device_for_each_child(dev, thdev, intel_th_child_remove);
  if (err)
   return err;






  for (i = 0, lowest = -1; i < th->num_thdevs; i++) {





   if (th->thdev[i]->type != INTEL_TH_OUTPUT) {
    if (lowest >= 0) {
     th->thdev[lowest] = th->thdev[i];
     th->thdev[i] = ((void*)0);
     ++lowest;
    }

    continue;
   }

   if (lowest == -1)
    lowest = i;

   intel_th_device_remove(th->thdev[i]);
   th->thdev[i] = ((void*)0);
  }

  if (lowest >= 0)
   th->num_thdevs = lowest;
 }

 if (thdrv->attr_group)
  sysfs_remove_group(&thdev->dev.kobj, thdrv->attr_group);

 pm_runtime_get_sync(dev);

 thdrv->remove(thdev);

 if (intel_th_output_assigned(thdev)) {
  struct intel_th_driver *hubdrv =
   to_intel_th_driver(dev->parent->driver);

  if (hub->dev.driver)

   hubdrv->unassign(hub, thdev);
 }

 pm_runtime_disable(dev);
 pm_runtime_set_active(dev);
 pm_runtime_enable(dev);

 return 0;
}
