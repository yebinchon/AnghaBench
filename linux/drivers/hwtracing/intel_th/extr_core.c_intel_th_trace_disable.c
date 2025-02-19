
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_th_driver {int (* disable ) (struct intel_th_device*,int *) ;} ;
struct TYPE_2__ {int driver; int parent; } ;
struct intel_th_device {scalar_t__ type; TYPE_1__ dev; int output; } ;


 int EINVAL ;
 scalar_t__ INTEL_TH_OUTPUT ;
 scalar_t__ INTEL_TH_SWITCH ;
 int WARN_ON_ONCE (int) ;
 int pm_runtime_put (TYPE_1__*) ;
 int stub1 (struct intel_th_device*,int *) ;
 struct intel_th_device* to_intel_th_device (int ) ;
 struct intel_th_driver* to_intel_th_driver (int ) ;

int intel_th_trace_disable(struct intel_th_device *thdev)
{
 struct intel_th_device *hub = to_intel_th_device(thdev->dev.parent);
 struct intel_th_driver *hubdrv = to_intel_th_driver(hub->dev.driver);

 WARN_ON_ONCE(hub->type != INTEL_TH_SWITCH);
 if (WARN_ON_ONCE(thdev->type != INTEL_TH_OUTPUT))
  return -EINVAL;

 hubdrv->disable(hub, &thdev->output);
 pm_runtime_put(&thdev->dev);

 return 0;
}
