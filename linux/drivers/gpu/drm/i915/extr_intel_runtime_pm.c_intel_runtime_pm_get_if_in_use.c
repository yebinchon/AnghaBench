
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int kdev; } ;
typedef int intel_wakeref_t ;


 int CONFIG_PM ;
 scalar_t__ IS_ENABLED (int ) ;
 int intel_runtime_pm_acquire (struct intel_runtime_pm*,int) ;
 scalar_t__ pm_runtime_get_if_in_use (int ) ;
 int track_intel_runtime_pm_wakeref (struct intel_runtime_pm*) ;

intel_wakeref_t intel_runtime_pm_get_if_in_use(struct intel_runtime_pm *rpm)
{
 if (IS_ENABLED(CONFIG_PM)) {






  if (pm_runtime_get_if_in_use(rpm->kdev) <= 0)
   return 0;
 }

 intel_runtime_pm_acquire(rpm, 1);

 return track_intel_runtime_pm_wakeref(rpm);
}
