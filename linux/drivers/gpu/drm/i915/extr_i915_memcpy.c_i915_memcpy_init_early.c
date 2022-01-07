
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int X86_FEATURE_HYPERVISOR ;
 int X86_FEATURE_XMM4_1 ;
 int boot_cpu_has (int ) ;
 int has_movntdqa ;
 int static_branch_enable (int *) ;
 scalar_t__ static_cpu_has (int ) ;

void i915_memcpy_init_early(struct drm_i915_private *dev_priv)
{




 if (static_cpu_has(X86_FEATURE_XMM4_1) &&
     !boot_cpu_has(X86_FEATURE_HYPERVISOR))
  static_branch_enable(&has_movntdqa);
}
