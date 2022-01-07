
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int DRM_ERROR (char*) ;
 int ENODEV ;
 scalar_t__ lpe_audio_detect (struct drm_i915_private*) ;
 int lpe_audio_setup (struct drm_i915_private*) ;

int intel_lpe_audio_init(struct drm_i915_private *dev_priv)
{
 int ret = -ENODEV;

 if (lpe_audio_detect(dev_priv)) {
  ret = lpe_audio_setup(dev_priv);
  if (ret < 0)
   DRM_ERROR("failed to setup LPE Audio bridge\n");
 }
 return ret;
}
