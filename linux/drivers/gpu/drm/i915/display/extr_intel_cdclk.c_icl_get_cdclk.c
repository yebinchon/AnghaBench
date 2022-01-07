
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_cdclk_state {int bypass; int ref; int vco; int cdclk; int voltage_level; } ;
struct drm_i915_private {int dummy; } ;


 int BXT_CDCLK_CD2X_DIV_SEL_MASK ;
 int BXT_DE_PLL_ENABLE ;
 int BXT_DE_PLL_LOCK ;
 int BXT_DE_PLL_PLL_ENABLE ;
 int BXT_DE_PLL_RATIO_MASK ;
 int CDCLK_CTL ;
 int I915_READ (int ) ;



 int ICL_DSSM_CDCLK_PLL_REFCLK_MASK ;
 int MISSING_CASE (int) ;
 int SKL_DSSM ;
 int WARN_ON (int) ;
 int icl_calc_voltage_level (struct drm_i915_private*,int) ;

__attribute__((used)) static void icl_get_cdclk(struct drm_i915_private *dev_priv,
     struct intel_cdclk_state *cdclk_state)
{
 u32 val;

 cdclk_state->bypass = 50000;

 val = I915_READ(SKL_DSSM);
 switch (val & ICL_DSSM_CDCLK_PLL_REFCLK_MASK) {
 default:
  MISSING_CASE(val);

 case 129:
  cdclk_state->ref = 24000;
  break;
 case 130:
  cdclk_state->ref = 19200;
  break;
 case 128:
  cdclk_state->ref = 38400;
  break;
 }

 val = I915_READ(BXT_DE_PLL_ENABLE);
 if ((val & BXT_DE_PLL_PLL_ENABLE) == 0 ||
     (val & BXT_DE_PLL_LOCK) == 0) {




  cdclk_state->vco = 0;
  cdclk_state->cdclk = cdclk_state->bypass;
  goto out;
 }

 cdclk_state->vco = (val & BXT_DE_PLL_RATIO_MASK) * cdclk_state->ref;

 val = I915_READ(CDCLK_CTL);
 WARN_ON((val & BXT_CDCLK_CD2X_DIV_SEL_MASK) != 0);

 cdclk_state->cdclk = cdclk_state->vco / 2;

out:




 cdclk_state->voltage_level =
  icl_calc_voltage_level(dev_priv, cdclk_state->cdclk);
}
