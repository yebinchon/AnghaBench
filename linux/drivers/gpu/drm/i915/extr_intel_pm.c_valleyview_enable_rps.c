
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int uncore; } ;


 int DRM_DEBUG_DRIVER (char*,int) ;
 int FORCEWAKE_ALL ;
 int GEN6_RP_CONTROL ;
 int GEN6_RP_DOWN_EI ;
 int GEN6_RP_DOWN_IDLE_CONT ;
 int GEN6_RP_DOWN_THRESHOLD ;
 int GEN6_RP_DOWN_TIMEOUT ;
 int GEN6_RP_ENABLE ;
 int GEN6_RP_IDLE_HYSTERSIS ;
 int GEN6_RP_MEDIA_HW_NORMAL_MODE ;
 int GEN6_RP_MEDIA_IS_GFX ;
 int GEN6_RP_MEDIA_TURBO ;
 int GEN6_RP_UP_BUSY_AVG ;
 int GEN6_RP_UP_EI ;
 int GEN6_RP_UP_THRESHOLD ;
 int GPLLENABLE ;
 int I915_WRITE (int ,int) ;
 int PUNIT_REG_GPU_FREQ_STS ;
 int VLV_BIAS_CPU_125_SOC_875 ;
 int VLV_OVERRIDE_EN ;
 int VLV_SOC_TDP_EN ;
 int VLV_TURBO_SOC_OVERRIDE ;
 int WARN_ONCE (int,char*) ;
 int intel_uncore_forcewake_get (int *,int ) ;
 int intel_uncore_forcewake_put (int *,int ) ;
 int reset_rps (struct drm_i915_private*,int ) ;
 int valleyview_set_rps ;
 int vlv_punit_get (struct drm_i915_private*) ;
 int vlv_punit_put (struct drm_i915_private*) ;
 int vlv_punit_read (struct drm_i915_private*,int ) ;
 int vlv_punit_write (struct drm_i915_private*,int ,int) ;
 int yesno (int) ;

__attribute__((used)) static void valleyview_enable_rps(struct drm_i915_private *dev_priv)
{
 u32 val;

 intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);

 I915_WRITE(GEN6_RP_DOWN_TIMEOUT, 1000000);
 I915_WRITE(GEN6_RP_UP_THRESHOLD, 59400);
 I915_WRITE(GEN6_RP_DOWN_THRESHOLD, 245000);
 I915_WRITE(GEN6_RP_UP_EI, 66000);
 I915_WRITE(GEN6_RP_DOWN_EI, 350000);

 I915_WRITE(GEN6_RP_IDLE_HYSTERSIS, 10);

 I915_WRITE(GEN6_RP_CONTROL,
     GEN6_RP_MEDIA_TURBO |
     GEN6_RP_MEDIA_HW_NORMAL_MODE |
     GEN6_RP_MEDIA_IS_GFX |
     GEN6_RP_ENABLE |
     GEN6_RP_UP_BUSY_AVG |
     GEN6_RP_DOWN_IDLE_CONT);

 vlv_punit_get(dev_priv);


 val = VLV_OVERRIDE_EN | VLV_SOC_TDP_EN | VLV_BIAS_CPU_125_SOC_875;
 vlv_punit_write(dev_priv, VLV_TURBO_SOC_OVERRIDE, val);

 val = vlv_punit_read(dev_priv, PUNIT_REG_GPU_FREQ_STS);

 vlv_punit_put(dev_priv);


 WARN_ONCE((val & GPLLENABLE) == 0, "GPLL not enabled\n");

 DRM_DEBUG_DRIVER("GPLL enabled? %s\n", yesno(val & GPLLENABLE));
 DRM_DEBUG_DRIVER("GPU status: 0x%08x\n", val);

 reset_rps(dev_priv, valleyview_set_rps);

 intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
}
