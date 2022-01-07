
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int i915_mch_dev ;
 int ips_ping_for_i915_load () ;
 int rcu_assign_pointer (int ,struct drm_i915_private*) ;

void intel_gpu_ips_init(struct drm_i915_private *dev_priv)
{


 rcu_assign_pointer(i915_mch_dev, dev_priv);

 ips_ping_for_i915_load();
}
