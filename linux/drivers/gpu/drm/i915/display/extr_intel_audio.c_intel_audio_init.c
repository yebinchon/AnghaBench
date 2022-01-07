
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int i915_audio_component_init (struct drm_i915_private*) ;
 scalar_t__ intel_lpe_audio_init (struct drm_i915_private*) ;

void intel_audio_init(struct drm_i915_private *dev_priv)
{
 if (intel_lpe_audio_init(dev_priv) < 0)
  i915_audio_component_init(dev_priv);
}
