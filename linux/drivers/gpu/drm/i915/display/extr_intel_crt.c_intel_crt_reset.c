
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_crt {int force_hotplug_required; int adpa_reg; } ;
struct drm_i915_private {int dummy; } ;
struct drm_encoder {int dev; } ;


 int ADPA_CRT_HOTPLUG_MASK ;
 int ADPA_HOTPLUG_BITS ;
 int DRM_DEBUG_KMS (char*,int ) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int POSTING_READ (int ) ;
 struct intel_crt* intel_encoder_to_crt (int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 int to_intel_encoder (struct drm_encoder*) ;

void intel_crt_reset(struct drm_encoder *encoder)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->dev);
 struct intel_crt *crt = intel_encoder_to_crt(to_intel_encoder(encoder));

 if (INTEL_GEN(dev_priv) >= 5) {
  u32 adpa;

  adpa = I915_READ(crt->adpa_reg);
  adpa &= ~ADPA_CRT_HOTPLUG_MASK;
  adpa |= ADPA_HOTPLUG_BITS;
  I915_WRITE(crt->adpa_reg, adpa);
  POSTING_READ(crt->adpa_reg);

  DRM_DEBUG_KMS("crt adpa set to 0x%x\n", adpa);
  crt->force_hotplug_required = 1;
 }

}
