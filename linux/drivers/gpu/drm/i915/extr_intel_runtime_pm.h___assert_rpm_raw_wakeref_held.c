
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int dummy; } ;


 int WARN_ONCE (int,char*) ;
 int assert_rpm_device_not_suspended (struct intel_runtime_pm*) ;
 int intel_rpm_raw_wakeref_count (int) ;

__attribute__((used)) static inline void
__assert_rpm_raw_wakeref_held(struct intel_runtime_pm *rpm, int wakeref_count)
{
 assert_rpm_device_not_suspended(rpm);
 WARN_ONCE(!intel_rpm_raw_wakeref_count(wakeref_count),
    "RPM raw-wakeref not held\n");
}
