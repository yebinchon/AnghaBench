
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;


 int FUSE_STRAP ;
 int HSW_CPU_SSC_ENABLE ;
 int I915_READ (int ) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_HSW_ULT (struct drm_i915_private*) ;
 int WRPLL_CTL (int) ;
 int WRPLL_PLL_ENABLE ;
 int WRPLL_REF_MASK ;
 int WRPLL_REF_MUXED_SSC_BDW ;
 int WRPLL_REF_PCH_SSC ;

__attribute__((used)) static bool wrpll_uses_pch_ssc(struct drm_i915_private *dev_priv,
          enum intel_dpll_id id)
{
 u32 fuse_strap = I915_READ(FUSE_STRAP);
 u32 ctl = I915_READ(WRPLL_CTL(id));

 if ((ctl & WRPLL_PLL_ENABLE) == 0)
  return 0;

 if ((ctl & WRPLL_REF_MASK) == WRPLL_REF_PCH_SSC)
  return 1;

 if ((IS_BROADWELL(dev_priv) || IS_HSW_ULT(dev_priv)) &&
     (ctl & WRPLL_REF_MASK) == WRPLL_REF_MUXED_SSC_BDW &&
     (fuse_strap & HSW_CPU_SSC_ENABLE) == 0)
  return 1;

 return 0;
}
