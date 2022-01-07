
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_cdclk_state {int dummy; } ;
struct TYPE_4__ {int hw; } ;
struct TYPE_3__ {int (* get_cdclk ) (struct drm_i915_private*,struct intel_cdclk_state*) ;} ;
struct drm_i915_private {TYPE_2__ cdclk; TYPE_1__ display; } ;


 int DC_STATE_DISABLE ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 int WARN_ON (int ) ;
 int bxt_verify_ddi_phy_power_wells (struct drm_i915_private*) ;
 int gen9_assert_dbuf_enabled (struct drm_i915_private*) ;
 int gen9_set_dc_state (struct drm_i915_private*,int ) ;
 int intel_cdclk_needs_modeset (int *,struct intel_cdclk_state*) ;
 int intel_combo_phy_init (struct drm_i915_private*) ;
 int stub1 (struct drm_i915_private*,struct intel_cdclk_state*) ;

__attribute__((used)) static void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
{
 struct intel_cdclk_state cdclk_state = {};

 gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);

 dev_priv->display.get_cdclk(dev_priv, &cdclk_state);

 WARN_ON(intel_cdclk_needs_modeset(&dev_priv->cdclk.hw, &cdclk_state));

 gen9_assert_dbuf_enabled(dev_priv);

 if (IS_GEN9_LP(dev_priv))
  bxt_verify_ddi_phy_power_wells(dev_priv);

 if (INTEL_GEN(dev_priv) >= 11)





  intel_combo_phy_init(dev_priv);
}
