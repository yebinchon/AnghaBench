
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DRM_ERROR (char*) ;
 int I915_READ (int ) ;
 int LCPLL_CD_SOURCE_FCLK ;
 int LCPLL_CTL ;
 int LCPLL_PLL_DISABLE ;
 int LCPLL_REF_MASK ;
 int LCPLL_REF_NON_SSC ;

__attribute__((used)) static void hsw_assert_cdclk(struct drm_i915_private *dev_priv)
{
 u32 val = I915_READ(LCPLL_CTL);







 if (val & LCPLL_CD_SOURCE_FCLK)
  DRM_ERROR("CDCLK source is not LCPLL\n");

 if (val & LCPLL_PLL_DISABLE)
  DRM_ERROR("LCPLL is disabled\n");

 if ((val & LCPLL_REF_MASK) != LCPLL_REF_NON_SSC)
  DRM_ERROR("LCPLL not using non-SSC reference\n");
}
