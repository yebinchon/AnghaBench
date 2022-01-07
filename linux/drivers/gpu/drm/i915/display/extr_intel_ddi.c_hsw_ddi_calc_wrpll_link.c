
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;


 int FUSE_STRAP3 ;
 int HSW_REF_CLK_SELECT ;
 int I915_READ (int ) ;
 int IS_HASWELL (struct drm_i915_private*) ;
 int IS_HSW_ULT (struct drm_i915_private*) ;
 int MISSING_CASE (int) ;
 int WRPLL_DIVIDER_FB_MASK ;
 int WRPLL_DIVIDER_FB_SHIFT ;
 int WRPLL_DIVIDER_POST_MASK ;
 int WRPLL_DIVIDER_POST_SHIFT ;
 int WRPLL_DIVIDER_REF_MASK ;

 int WRPLL_REF_MASK ;



__attribute__((used)) static int hsw_ddi_calc_wrpll_link(struct drm_i915_private *dev_priv,
       i915_reg_t reg)
{
 int refclk;
 int n, p, r;
 u32 wrpll;

 wrpll = I915_READ(reg);
 switch (wrpll & WRPLL_REF_MASK) {
 case 128:





  if (IS_HASWELL(dev_priv) && !IS_HSW_ULT(dev_priv)) {
   if (I915_READ(FUSE_STRAP3) & HSW_REF_CLK_SELECT)
    refclk = 24;
   else
    refclk = 135;
   break;
  }

 case 129:





  refclk = 135;
  break;
 case 130:
  refclk = 2700;
  break;
 default:
  MISSING_CASE(wrpll);
  return 0;
 }

 r = wrpll & WRPLL_DIVIDER_REF_MASK;
 p = (wrpll & WRPLL_DIVIDER_POST_MASK) >> WRPLL_DIVIDER_POST_SHIFT;
 n = (wrpll & WRPLL_DIVIDER_FB_MASK) >> WRPLL_DIVIDER_FB_SHIFT;


 return (refclk * n * 100) / (p * r);
}
