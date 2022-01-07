
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int available; struct device* kdev; } ;
struct device {int dummy; } ;


 int WARN (int,char*) ;
 int pm_runtime_dont_use_autosuspend (struct device*) ;
 scalar_t__ pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;

void intel_runtime_pm_disable(struct intel_runtime_pm *rpm)
{
 struct device *kdev = rpm->kdev;


 WARN(pm_runtime_get_sync(kdev) < 0,
      "Failed to pass rpm ownership back to core\n");

 pm_runtime_dont_use_autosuspend(kdev);

 if (!rpm->available)
  pm_runtime_put(kdev);
}
