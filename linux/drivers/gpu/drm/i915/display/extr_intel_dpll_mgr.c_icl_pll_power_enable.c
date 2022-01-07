
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_shared_dpll {TYPE_1__* info; } ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
struct TYPE_2__ {int id; } ;


 int DRM_ERROR (char*,int ) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PLL_POWER_ENABLE ;
 int PLL_POWER_STATE ;
 scalar_t__ intel_de_wait_for_set (struct drm_i915_private*,int ,int ,int) ;

__attribute__((used)) static void icl_pll_power_enable(struct drm_i915_private *dev_priv,
     struct intel_shared_dpll *pll,
     i915_reg_t enable_reg)
{
 u32 val;

 val = I915_READ(enable_reg);
 val |= PLL_POWER_ENABLE;
 I915_WRITE(enable_reg, val);





 if (intel_de_wait_for_set(dev_priv, enable_reg, PLL_POWER_STATE, 1))
  DRM_ERROR("PLL %d Power not enabled\n", pll->info->id);
}
