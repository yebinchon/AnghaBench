
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int wakeref_count; } ;


 int WARN (int,char*,int ,int ) ;
 int atomic_read (int *) ;
 int intel_rpm_raw_wakeref_count (int) ;
 int intel_rpm_wakelock_count (int) ;
 int untrack_all_intel_runtime_pm_wakerefs (struct intel_runtime_pm*) ;

void intel_runtime_pm_driver_release(struct intel_runtime_pm *rpm)
{
 int count = atomic_read(&rpm->wakeref_count);

 WARN(count,
      "i915 raw-wakerefs=%d wakelocks=%d on cleanup\n",
      intel_rpm_raw_wakeref_count(count),
      intel_rpm_wakelock_count(count));

 untrack_all_intel_runtime_pm_wakerefs(rpm);
}
