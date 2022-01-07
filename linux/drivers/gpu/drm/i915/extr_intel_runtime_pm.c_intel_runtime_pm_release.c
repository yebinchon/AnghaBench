
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int wakeref_count; } ;


 int INTEL_RPM_WAKELOCK_BIAS ;
 int __intel_wakeref_dec_and_check_tracking (struct intel_runtime_pm*) ;
 int assert_rpm_raw_wakeref_held (struct intel_runtime_pm*) ;
 int assert_rpm_wakelock_held (struct intel_runtime_pm*) ;
 int atomic_sub (int ,int *) ;

__attribute__((used)) static void
intel_runtime_pm_release(struct intel_runtime_pm *rpm, int wakelock)
{
 if (wakelock) {
  assert_rpm_wakelock_held(rpm);
  atomic_sub(INTEL_RPM_WAKELOCK_BIAS, &rpm->wakeref_count);
 } else {
  assert_rpm_raw_wakeref_held(rpm);
 }

 __intel_wakeref_dec_and_check_tracking(rpm);
}
