
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int dummy; } ;


 int WARN_ONCE (int,char*) ;
 int __assert_rpm_raw_wakeref_held (struct intel_runtime_pm*,int) ;
 int intel_rpm_wakelock_count (int) ;

__attribute__((used)) static inline void
__assert_rpm_wakelock_held(struct intel_runtime_pm *rpm, int wakeref_count)
{
 __assert_rpm_raw_wakeref_held(rpm, wakeref_count);
 WARN_ONCE(!intel_rpm_wakelock_count(wakeref_count),
    "RPM wakelock ref not held during HW access\n");
}
