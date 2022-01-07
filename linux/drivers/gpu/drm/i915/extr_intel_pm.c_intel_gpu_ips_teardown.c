
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i915_mch_dev ;
 int rcu_assign_pointer (int ,int *) ;

void intel_gpu_ips_teardown(void)
{
 rcu_assign_pointer(i915_mch_dev, ((void*)0));
}
