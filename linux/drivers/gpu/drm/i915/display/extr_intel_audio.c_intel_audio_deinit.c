
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * platdev; } ;
struct drm_i915_private {TYPE_1__ lpe_audio; } ;


 int i915_audio_component_cleanup (struct drm_i915_private*) ;
 int intel_lpe_audio_teardown (struct drm_i915_private*) ;

void intel_audio_deinit(struct drm_i915_private *dev_priv)
{
 if ((dev_priv)->lpe_audio.platdev != ((void*)0))
  intel_lpe_audio_teardown(dev_priv);
 else
  i915_audio_component_cleanup(dev_priv);
}
