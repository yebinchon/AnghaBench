
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int wakeref_count; } ;


 scalar_t__ INTEL_RPM_WAKELOCK_BIAS ;
 int atomic_sub (scalar_t__,int *) ;

__attribute__((used)) static inline void
enable_rpm_wakeref_asserts(struct intel_runtime_pm *rpm)
{
 atomic_sub(INTEL_RPM_WAKELOCK_BIAS + 1,
     &rpm->wakeref_count);
}
