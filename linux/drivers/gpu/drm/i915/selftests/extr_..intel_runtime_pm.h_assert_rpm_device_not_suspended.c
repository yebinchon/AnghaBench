
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int suspended; } ;


 int WARN_ONCE (int ,char*) ;

__attribute__((used)) static inline void
assert_rpm_device_not_suspended(struct intel_runtime_pm *rpm)
{
 WARN_ONCE(rpm->suspended,
    "Device suspended during HW access\n");
}
