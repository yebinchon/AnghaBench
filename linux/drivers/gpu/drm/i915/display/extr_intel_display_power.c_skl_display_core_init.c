
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_power_well {int dummy; } ;
struct i915_power_domains {int lock; } ;
struct TYPE_2__ {scalar_t__ dmc_payload; } ;
struct drm_i915_private {TYPE_1__ csr; struct i915_power_domains power_domains; } ;


 int DC_STATE_DISABLE ;
 int HAS_PCH_NOP (struct drm_i915_private*) ;
 int SKL_DISP_PW_1 ;
 int SKL_DISP_PW_MISC_IO ;
 int gen9_dbuf_enable (struct drm_i915_private*) ;
 int gen9_set_dc_state (struct drm_i915_private*,int ) ;
 int intel_cdclk_init (struct drm_i915_private*) ;
 int intel_csr_load_program (struct drm_i915_private*) ;
 int intel_pch_reset_handshake (struct drm_i915_private*,int) ;
 int intel_power_well_enable (struct drm_i915_private*,struct i915_power_well*) ;
 struct i915_power_well* lookup_power_well (struct drm_i915_private*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void skl_display_core_init(struct drm_i915_private *dev_priv,
      bool resume)
{
 struct i915_power_domains *power_domains = &dev_priv->power_domains;
 struct i915_power_well *well;

 gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);


 intel_pch_reset_handshake(dev_priv, !HAS_PCH_NOP(dev_priv));


 mutex_lock(&power_domains->lock);

 well = lookup_power_well(dev_priv, SKL_DISP_PW_1);
 intel_power_well_enable(dev_priv, well);

 well = lookup_power_well(dev_priv, SKL_DISP_PW_MISC_IO);
 intel_power_well_enable(dev_priv, well);

 mutex_unlock(&power_domains->lock);

 intel_cdclk_init(dev_priv);

 gen9_dbuf_enable(dev_priv);

 if (resume && dev_priv->csr.dmc_payload)
  intel_csr_load_program(dev_priv);
}
