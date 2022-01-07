
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_pmu {int node; } ;
typedef enum cpuhp_state { ____Placeholder_cpuhp_state } cpuhp_state ;


 int CPUHP_AP_ONLINE_DYN ;
 int cpuhp_remove_multi_state (int) ;
 int cpuhp_setup_state_multi (int ,char*,int ,int ) ;
 int cpuhp_slot ;
 int cpuhp_state_add_instance (int,int *) ;
 int i915_pmu_cpu_offline ;
 int i915_pmu_cpu_online ;

__attribute__((used)) static int i915_pmu_register_cpuhp_state(struct i915_pmu *pmu)
{
 enum cpuhp_state slot;
 int ret;

 ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
          "perf/x86/intel/i915:online",
          i915_pmu_cpu_online,
          i915_pmu_cpu_offline);
 if (ret < 0)
  return ret;

 slot = ret;
 ret = cpuhp_state_add_instance(slot, &pmu->node);
 if (ret) {
  cpuhp_remove_multi_state(slot);
  return ret;
 }

 cpuhp_slot = slot;
 return 0;
}
