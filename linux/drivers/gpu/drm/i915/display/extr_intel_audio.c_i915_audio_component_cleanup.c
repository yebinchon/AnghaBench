
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct drm_i915_private {int audio_component_registered; TYPE_1__ drm; } ;


 int component_del (int ,int *) ;
 int i915_audio_component_bind_ops ;

__attribute__((used)) static void i915_audio_component_cleanup(struct drm_i915_private *dev_priv)
{
 if (!dev_priv->audio_component_registered)
  return;

 component_del(dev_priv->drm.dev, &i915_audio_component_bind_ops);
 dev_priv->audio_component_registered = 0;
}
