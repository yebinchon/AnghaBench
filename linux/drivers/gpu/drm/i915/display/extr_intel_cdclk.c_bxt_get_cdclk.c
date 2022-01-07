
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_cdclk_state {scalar_t__ vco; int cdclk; int voltage_level; int ref; int bypass; } ;
struct drm_i915_private {int dummy; } ;






 int BXT_CDCLK_CD2X_DIV_SEL_MASK ;
 int CDCLK_CTL ;
 int DIV_ROUND_CLOSEST (scalar_t__,int) ;
 int I915_READ (int ) ;
 int IS_GEMINILAKE (struct drm_i915_private*) ;
 int MISSING_CASE (int) ;
 int WARN (int ,char*) ;
 int bxt_calc_voltage_level (int ) ;
 int bxt_de_pll_update (struct drm_i915_private*,struct intel_cdclk_state*) ;

__attribute__((used)) static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
     struct intel_cdclk_state *cdclk_state)
{
 u32 divider;
 int div;

 bxt_de_pll_update(dev_priv, cdclk_state);

 cdclk_state->cdclk = cdclk_state->bypass = cdclk_state->ref;

 if (cdclk_state->vco == 0)
  goto out;

 divider = I915_READ(CDCLK_CTL) & BXT_CDCLK_CD2X_DIV_SEL_MASK;

 switch (divider) {
 case 131:
  div = 2;
  break;
 case 130:
  WARN(IS_GEMINILAKE(dev_priv), "Unsupported divider\n");
  div = 3;
  break;
 case 129:
  div = 4;
  break;
 case 128:
  div = 8;
  break;
 default:
  MISSING_CASE(divider);
  return;
 }

 cdclk_state->cdclk = DIV_ROUND_CLOSEST(cdclk_state->vco, div);

 out:




 cdclk_state->voltage_level =
  bxt_calc_voltage_level(cdclk_state->cdclk);
}
