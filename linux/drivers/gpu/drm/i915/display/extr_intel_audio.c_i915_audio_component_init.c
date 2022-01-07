
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct drm_i915_private {int audio_component_registered; TYPE_1__ drm; } ;


 int DRM_ERROR (char*,int) ;
 int I915_COMPONENT_AUDIO ;
 int component_add_typed (int ,int *,int ) ;
 int i915_audio_component_bind_ops ;

__attribute__((used)) static void i915_audio_component_init(struct drm_i915_private *dev_priv)
{
 int ret;

 ret = component_add_typed(dev_priv->drm.dev,
      &i915_audio_component_bind_ops,
      I915_COMPONENT_AUDIO);
 if (ret < 0) {
  DRM_ERROR("failed to add audio component (%d)\n", ret);

  return;
 }

 dev_priv->audio_component_registered = 1;
}
