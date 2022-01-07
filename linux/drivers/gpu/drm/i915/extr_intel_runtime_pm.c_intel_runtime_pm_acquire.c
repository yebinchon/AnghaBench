
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int wakeref_count; } ;


 scalar_t__ INTEL_RPM_WAKELOCK_BIAS ;
 int assert_rpm_raw_wakeref_held (struct intel_runtime_pm*) ;
 int assert_rpm_wakelock_held (struct intel_runtime_pm*) ;
 int atomic_add (scalar_t__,int *) ;
 int atomic_inc (int *) ;

__attribute__((used)) static void
intel_runtime_pm_acquire(struct intel_runtime_pm *rpm, bool wakelock)
{
 if (wakelock) {
  atomic_add(1 + INTEL_RPM_WAKELOCK_BIAS, &rpm->wakeref_count);
  assert_rpm_wakelock_held(rpm);
 } else {
  atomic_inc(&rpm->wakeref_count);
  assert_rpm_raw_wakeref_held(rpm);
 }
}
