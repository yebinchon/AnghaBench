
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_cdclk_state {int cdclk; int voltage_level; } ;
struct drm_i915_private {int hpll_freq; } ;
typedef int intel_wakeref_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int BIT (int ) ;
 int BUNIT_REG_BISOC ;
 int CCK_DISPLAY_CLOCK_CONTROL ;
 int CCK_FREQUENCY_STATUS ;
 int CCK_FREQUENCY_STATUS_SHIFT ;
 int CCK_FREQUENCY_VALUES ;
 int DIV_ROUND_CLOSEST (int,int) ;
 int DRM_ERROR (char*) ;
 int DSPFREQGUAR_MASK ;
 int DSPFREQGUAR_SHIFT ;
 int DSPFREQSTAT_MASK ;
 int DSPFREQSTAT_SHIFT ;
 int MISSING_CASE (int) ;
 int POWER_DOMAIN_DISPLAY_CORE ;
 int PUNIT_REG_DSPSSPM ;
 int VLV_IOSF_SB_BUNIT ;
 int VLV_IOSF_SB_CCK ;
 int VLV_IOSF_SB_PUNIT ;
 int intel_display_power_get (struct drm_i915_private*,int ) ;
 int intel_display_power_put (struct drm_i915_private*,int ,int ) ;
 int intel_update_cdclk (struct drm_i915_private*) ;
 int vlv_bunit_read (struct drm_i915_private*,int ) ;
 int vlv_bunit_write (struct drm_i915_private*,int ,int) ;
 int vlv_cck_read (struct drm_i915_private*,int ) ;
 int vlv_cck_write (struct drm_i915_private*,int ,int) ;
 int vlv_iosf_sb_get (struct drm_i915_private*,int) ;
 int vlv_iosf_sb_put (struct drm_i915_private*,int) ;
 int vlv_program_pfi_credits (struct drm_i915_private*) ;
 int vlv_punit_read (struct drm_i915_private*,int ) ;
 int vlv_punit_write (struct drm_i915_private*,int ,int) ;
 scalar_t__ wait_for (int,int) ;

__attribute__((used)) static void vlv_set_cdclk(struct drm_i915_private *dev_priv,
     const struct intel_cdclk_state *cdclk_state,
     enum pipe pipe)
{
 int cdclk = cdclk_state->cdclk;
 u32 val, cmd = cdclk_state->voltage_level;
 intel_wakeref_t wakeref;

 switch (cdclk) {
 case 400000:
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

 vlv_iosf_sb_get(dev_priv,
   BIT(VLV_IOSF_SB_CCK) |
   BIT(VLV_IOSF_SB_BUNIT) |
   BIT(VLV_IOSF_SB_PUNIT));

 val = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM);
 val &= ~DSPFREQGUAR_MASK;
 val |= (cmd << DSPFREQGUAR_SHIFT);
 vlv_punit_write(dev_priv, PUNIT_REG_DSPSSPM, val);
 if (wait_for((vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) &
        DSPFREQSTAT_MASK) == (cmd << DSPFREQSTAT_SHIFT),
       50)) {
  DRM_ERROR("timed out waiting for CDclk change\n");
 }

 if (cdclk == 400000) {
  u32 divider;

  divider = DIV_ROUND_CLOSEST(dev_priv->hpll_freq << 1,
         cdclk) - 1;


  val = vlv_cck_read(dev_priv, CCK_DISPLAY_CLOCK_CONTROL);
  val &= ~CCK_FREQUENCY_VALUES;
  val |= divider;
  vlv_cck_write(dev_priv, CCK_DISPLAY_CLOCK_CONTROL, val);

  if (wait_for((vlv_cck_read(dev_priv, CCK_DISPLAY_CLOCK_CONTROL) &
         CCK_FREQUENCY_STATUS) == (divider << CCK_FREQUENCY_STATUS_SHIFT),
        50))
   DRM_ERROR("timed out waiting for CDclk change\n");
 }


 val = vlv_bunit_read(dev_priv, BUNIT_REG_BISOC);
 val &= ~0x7f;





 if (cdclk == 400000)
  val |= 4500 / 250;
 else
  val |= 3000 / 250;
 vlv_bunit_write(dev_priv, BUNIT_REG_BISOC, val);

 vlv_iosf_sb_put(dev_priv,
   BIT(VLV_IOSF_SB_CCK) |
   BIT(VLV_IOSF_SB_BUNIT) |
   BIT(VLV_IOSF_SB_PUNIT));

 intel_update_cdclk(dev_priv);

 vlv_program_pfi_credits(dev_priv);

 intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
}
