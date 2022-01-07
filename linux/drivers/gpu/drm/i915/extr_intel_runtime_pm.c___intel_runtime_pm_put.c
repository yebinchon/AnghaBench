
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {struct device* kdev; } ;
struct device {int dummy; } ;
typedef int intel_wakeref_t ;


 int intel_runtime_pm_release (struct intel_runtime_pm*,int) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 int untrack_intel_runtime_pm_wakeref (struct intel_runtime_pm*,int ) ;

__attribute__((used)) static void __intel_runtime_pm_put(struct intel_runtime_pm *rpm,
       intel_wakeref_t wref,
       bool wakelock)
{
 struct device *kdev = rpm->kdev;

 untrack_intel_runtime_pm_wakeref(rpm, wref);

 intel_runtime_pm_release(rpm, wakelock);

 pm_runtime_mark_last_busy(kdev);
 pm_runtime_put_autosuspend(kdev);
}
