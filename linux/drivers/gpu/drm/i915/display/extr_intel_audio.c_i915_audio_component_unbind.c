
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dev; int * ops; } ;
struct i915_audio_component {TYPE_1__ base; } ;
struct drm_i915_private {int drm; int * audio_component; } ;
struct device {int dummy; } ;


 int device_link_remove (struct device*,struct device*) ;
 int drm_modeset_lock_all (int *) ;
 int drm_modeset_unlock_all (int *) ;
 struct drm_i915_private* kdev_to_i915 (struct device*) ;

__attribute__((used)) static void i915_audio_component_unbind(struct device *i915_kdev,
     struct device *hda_kdev, void *data)
{
 struct i915_audio_component *acomp = data;
 struct drm_i915_private *dev_priv = kdev_to_i915(i915_kdev);

 drm_modeset_lock_all(&dev_priv->drm);
 acomp->base.ops = ((void*)0);
 acomp->base.dev = ((void*)0);
 dev_priv->audio_component = ((void*)0);
 drm_modeset_unlock_all(&dev_priv->drm);

 device_link_remove(hda_kdev, i915_kdev);
}
