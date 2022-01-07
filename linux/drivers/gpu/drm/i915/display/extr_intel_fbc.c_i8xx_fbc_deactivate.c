
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;
 int FBC_CONTROL ;
 int FBC_CTL_EN ;
 int FBC_STATUS ;
 int FBC_STAT_COMPRESSING ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ intel_de_wait_for_clear (struct drm_i915_private*,int ,int ,int) ;

__attribute__((used)) static void i8xx_fbc_deactivate(struct drm_i915_private *dev_priv)
{
 u32 fbc_ctl;


 fbc_ctl = I915_READ(FBC_CONTROL);
 if ((fbc_ctl & FBC_CTL_EN) == 0)
  return;

 fbc_ctl &= ~FBC_CTL_EN;
 I915_WRITE(FBC_CONTROL, fbc_ctl);


 if (intel_de_wait_for_clear(dev_priv, FBC_STATUS,
        FBC_STAT_COMPRESSING, 10)) {
  DRM_DEBUG_KMS("FBC idle timed out\n");
  return;
 }
}
