
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_cdclk_state {int cdclk; int voltage_level; int vco; int ref; } ;
struct TYPE_4__ {scalar_t__ cdclk; scalar_t__ bypass; int ref; } ;
struct TYPE_3__ {TYPE_2__ hw; } ;
struct drm_i915_private {TYPE_1__ cdclk; } ;


 int BXT_CDCLK_CD2X_DIV_SEL_MASK ;
 int CDCLK_CTL ;
 int CDCLK_FREQ_DECIMAL_MASK ;
 int DRM_DEBUG_KMS (char*) ;
 int I915_READ (int ) ;
 int INVALID_PIPE ;
 int icl_calc_cdclk (int ,int ) ;
 int icl_calc_cdclk_pll_vco (struct drm_i915_private*,int ) ;
 int icl_calc_voltage_level (struct drm_i915_private*,int ) ;
 int icl_set_cdclk (struct drm_i915_private*,struct intel_cdclk_state*,int ) ;
 int intel_dump_cdclk_state (TYPE_2__*,char*) ;
 int intel_update_cdclk (struct drm_i915_private*) ;
 int skl_cdclk_decimal (scalar_t__) ;

__attribute__((used)) static void icl_init_cdclk(struct drm_i915_private *dev_priv)
{
 struct intel_cdclk_state sanitized_state;
 u32 val;


 intel_update_cdclk(dev_priv);
 intel_dump_cdclk_state(&dev_priv->cdclk.hw, "Current CDCLK");


 if (dev_priv->cdclk.hw.cdclk == dev_priv->cdclk.hw.bypass)
  goto sanitize;

 val = I915_READ(CDCLK_CTL);

 if ((val & BXT_CDCLK_CD2X_DIV_SEL_MASK) != 0)
  goto sanitize;

 if ((val & CDCLK_FREQ_DECIMAL_MASK) !=
     skl_cdclk_decimal(dev_priv->cdclk.hw.cdclk))
  goto sanitize;

 return;

sanitize:
 DRM_DEBUG_KMS("Sanitizing cdclk programmed by pre-os\n");

 sanitized_state.ref = dev_priv->cdclk.hw.ref;
 sanitized_state.cdclk = icl_calc_cdclk(0, sanitized_state.ref);
 sanitized_state.vco = icl_calc_cdclk_pll_vco(dev_priv,
           sanitized_state.cdclk);
 sanitized_state.voltage_level =
    icl_calc_voltage_level(dev_priv,
             sanitized_state.cdclk);

 icl_set_cdclk(dev_priv, &sanitized_state, INVALID_PIPE);
}
