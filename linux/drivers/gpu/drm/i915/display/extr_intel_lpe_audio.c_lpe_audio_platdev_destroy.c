
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int platdev; } ;
struct drm_i915_private {TYPE_1__ lpe_audio; } ;


 int platform_device_unregister (int ) ;

__attribute__((used)) static void lpe_audio_platdev_destroy(struct drm_i915_private *dev_priv)
{
 platform_device_unregister(dev_priv->lpe_audio.platdev);
}
