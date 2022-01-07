
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PSCI_1_0_FEATURES_CPU_SUSPEND_PF_MASK ;
 int psci_cpu_suspend_feature ;

__attribute__((used)) static inline bool psci_has_ext_power_state(void)
{
 return psci_cpu_suspend_feature &
    PSCI_1_0_FEATURES_CPU_SUSPEND_PF_MASK;
}
