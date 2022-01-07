
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int runtime_pm; } ;


 int DC_STATE_EN ;
 int DC_STATE_EN_UPTO_DC5 ;
 int I915_READ (int ) ;
 int SKL_DISP_PW_2 ;
 int WARN_ONCE (int,char*) ;
 int assert_csr_loaded (struct drm_i915_private*) ;
 int assert_rpm_wakelock_held (int *) ;
 int intel_display_power_well_is_enabled (struct drm_i915_private*,int ) ;

__attribute__((used)) static void assert_can_enable_dc5(struct drm_i915_private *dev_priv)
{
 bool pg2_enabled = intel_display_power_well_is_enabled(dev_priv,
     SKL_DISP_PW_2);

 WARN_ONCE(pg2_enabled, "PG2 not disabled to enable DC5.\n");

 WARN_ONCE((I915_READ(DC_STATE_EN) & DC_STATE_EN_UPTO_DC5),
    "DC5 already programmed to be enabled.\n");
 assert_rpm_wakelock_held(&dev_priv->runtime_pm);

 assert_csr_loaded(dev_priv);
}
