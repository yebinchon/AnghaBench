
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_cdclk_state {int cdclk; int bypass; int ref; int vco; int voltage_level; } ;
struct drm_i915_private {int dummy; } ;


 int CDCLK_CTL ;




 int CDCLK_FREQ_SEL_MASK ;
 int I915_READ (int ) ;
 int MISSING_CASE (int) ;
 int skl_calc_voltage_level (int) ;
 int skl_dpll0_update (struct drm_i915_private*,struct intel_cdclk_state*) ;

__attribute__((used)) static void skl_get_cdclk(struct drm_i915_private *dev_priv,
     struct intel_cdclk_state *cdclk_state)
{
 u32 cdctl;

 skl_dpll0_update(dev_priv, cdclk_state);

 cdclk_state->cdclk = cdclk_state->bypass = cdclk_state->ref;

 if (cdclk_state->vco == 0)
  goto out;

 cdctl = I915_READ(CDCLK_CTL);

 if (cdclk_state->vco == 8640000) {
  switch (cdctl & CDCLK_FREQ_SEL_MASK) {
  case 130:
   cdclk_state->cdclk = 432000;
   break;
  case 131:
   cdclk_state->cdclk = 308571;
   break;
  case 129:
   cdclk_state->cdclk = 540000;
   break;
  case 128:
   cdclk_state->cdclk = 617143;
   break;
  default:
   MISSING_CASE(cdctl & CDCLK_FREQ_SEL_MASK);
   break;
  }
 } else {
  switch (cdctl & CDCLK_FREQ_SEL_MASK) {
  case 130:
   cdclk_state->cdclk = 450000;
   break;
  case 131:
   cdclk_state->cdclk = 337500;
   break;
  case 129:
   cdclk_state->cdclk = 540000;
   break;
  case 128:
   cdclk_state->cdclk = 675000;
   break;
  default:
   MISSING_CASE(cdctl & CDCLK_FREQ_SEL_MASK);
   break;
  }
 }

 out:




 cdclk_state->voltage_level =
  skl_calc_voltage_level(cdclk_state->cdclk);
}
