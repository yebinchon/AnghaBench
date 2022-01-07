
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int wakeref_count; } ;


 int __assert_rpm_wakelock_held (struct intel_runtime_pm*,int ) ;
 int atomic_read (int *) ;

__attribute__((used)) static inline void
assert_rpm_wakelock_held(struct intel_runtime_pm *rpm)
{
 __assert_rpm_wakelock_held(rpm, atomic_read(&rpm->wakeref_count));
}
