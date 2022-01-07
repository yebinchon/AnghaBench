
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int kdev; } ;
typedef int intel_wakeref_t ;


 int assert_rpm_wakelock_held (struct intel_runtime_pm*) ;
 int intel_runtime_pm_acquire (struct intel_runtime_pm*,int) ;
 int pm_runtime_get_noresume (int ) ;
 int track_intel_runtime_pm_wakeref (struct intel_runtime_pm*) ;

intel_wakeref_t intel_runtime_pm_get_noresume(struct intel_runtime_pm *rpm)
{
 assert_rpm_wakelock_held(rpm);
 pm_runtime_get_noresume(rpm->kdev);

 intel_runtime_pm_acquire(rpm, 1);

 return track_intel_runtime_pm_wakeref(rpm);
}
