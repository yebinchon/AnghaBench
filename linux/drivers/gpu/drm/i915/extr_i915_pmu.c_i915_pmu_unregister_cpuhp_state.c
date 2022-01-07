
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_pmu {int node; } ;


 scalar_t__ CPUHP_INVALID ;
 int WARN_ON (int) ;
 int cpuhp_remove_multi_state (scalar_t__) ;
 scalar_t__ cpuhp_slot ;
 int cpuhp_state_remove_instance (scalar_t__,int *) ;

__attribute__((used)) static void i915_pmu_unregister_cpuhp_state(struct i915_pmu *pmu)
{
 WARN_ON(cpuhp_slot == CPUHP_INVALID);
 WARN_ON(cpuhp_state_remove_instance(cpuhp_slot, &pmu->node));
 cpuhp_remove_multi_state(cpuhp_slot);
}
