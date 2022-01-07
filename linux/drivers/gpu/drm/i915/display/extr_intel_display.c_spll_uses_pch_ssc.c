
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int FUSE_STRAP ;
 int HSW_CPU_SSC_ENABLE ;
 int I915_READ (int ) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 int SPLL_CTL ;
 int SPLL_PLL_ENABLE ;
 int SPLL_REF_MASK ;
 int SPLL_REF_MUXED_SSC ;
 int SPLL_REF_PCH_SSC_BDW ;

__attribute__((used)) static bool spll_uses_pch_ssc(struct drm_i915_private *dev_priv)
{
 u32 fuse_strap = I915_READ(FUSE_STRAP);
 u32 ctl = I915_READ(SPLL_CTL);

 if ((ctl & SPLL_PLL_ENABLE) == 0)
  return 0;

 if ((ctl & SPLL_REF_MASK) == SPLL_REF_MUXED_SSC &&
     (fuse_strap & HSW_CPU_SSC_ENABLE) == 0)
  return 1;

 if (IS_BROADWELL(dev_priv) &&
     (ctl & SPLL_REF_MASK) == SPLL_REF_PCH_SSC_BDW)
  return 1;

 return 0;
}
