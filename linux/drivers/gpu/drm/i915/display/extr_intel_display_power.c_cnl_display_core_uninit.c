
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_power_well {int dummy; } ;
struct i915_power_domains {int lock; } ;
struct drm_i915_private {struct i915_power_domains power_domains; } ;


 int SKL_DISP_PW_1 ;
 int gen9_dbuf_disable (struct drm_i915_private*) ;
 int gen9_disable_dc_states (struct drm_i915_private*) ;
 int intel_cdclk_uninit (struct drm_i915_private*) ;
 int intel_combo_phy_uninit (struct drm_i915_private*) ;
 int intel_power_well_disable (struct drm_i915_private*,struct i915_power_well*) ;
 struct i915_power_well* lookup_power_well (struct drm_i915_private*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void cnl_display_core_uninit(struct drm_i915_private *dev_priv)
{
 struct i915_power_domains *power_domains = &dev_priv->power_domains;
 struct i915_power_well *well;

 gen9_disable_dc_states(dev_priv);




 gen9_dbuf_disable(dev_priv);


 intel_cdclk_uninit(dev_priv);






 mutex_lock(&power_domains->lock);
 well = lookup_power_well(dev_priv, SKL_DISP_PW_1);
 intel_power_well_disable(dev_priv, well);
 mutex_unlock(&power_domains->lock);

 usleep_range(10, 30);


 intel_combo_phy_uninit(dev_priv);
}
