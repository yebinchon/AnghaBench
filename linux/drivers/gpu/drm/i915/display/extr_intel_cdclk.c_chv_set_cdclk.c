
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_cdclk_state {int cdclk; int voltage_level; } ;
struct drm_i915_private {int dummy; } ;
typedef int intel_wakeref_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DRM_ERROR (char*) ;
 int DSPFREQGUAR_MASK_CHV ;
 int DSPFREQGUAR_SHIFT_CHV ;
 int DSPFREQSTAT_MASK_CHV ;
 int DSPFREQSTAT_SHIFT_CHV ;
 int MISSING_CASE (int) ;
 int POWER_DOMAIN_DISPLAY_CORE ;
 int PUNIT_REG_DSPSSPM ;
 int intel_display_power_get (struct drm_i915_private*,int ) ;
 int intel_display_power_put (struct drm_i915_private*,int ,int ) ;
 int intel_update_cdclk (struct drm_i915_private*) ;
 int vlv_program_pfi_credits (struct drm_i915_private*) ;
 int vlv_punit_get (struct drm_i915_private*) ;
 int vlv_punit_put (struct drm_i915_private*) ;
 int vlv_punit_read (struct drm_i915_private*,int ) ;
 int vlv_punit_write (struct drm_i915_private*,int ,int) ;
 scalar_t__ wait_for (int,int) ;

__attribute__((used)) static void chv_set_cdclk(struct drm_i915_private *dev_priv,
     const struct intel_cdclk_state *cdclk_state,
     enum pipe pipe)
{
 int cdclk = cdclk_state->cdclk;
 u32 val, cmd = cdclk_state->voltage_level;
 intel_wakeref_t wakeref;

 switch (cdclk) {
 case 333333:
 case 320000:
 case 266667:
 case 200000:
  break;
 default:
  MISSING_CASE(cdclk);
  return;
 }







 wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_DISPLAY_CORE);

 vlv_punit_get(dev_priv);
 val = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM);
 val &= ~DSPFREQGUAR_MASK_CHV;
 val |= (cmd << DSPFREQGUAR_SHIFT_CHV);
 vlv_punit_write(dev_priv, PUNIT_REG_DSPSSPM, val);
 if (wait_for((vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) &
        DSPFREQSTAT_MASK_CHV) == (cmd << DSPFREQSTAT_SHIFT_CHV),
       50)) {
  DRM_ERROR("timed out waiting for CDclk change\n");
 }

 vlv_punit_put(dev_priv);

 intel_update_cdclk(dev_priv);

 vlv_program_pfi_credits(dev_priv);

 intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
}
