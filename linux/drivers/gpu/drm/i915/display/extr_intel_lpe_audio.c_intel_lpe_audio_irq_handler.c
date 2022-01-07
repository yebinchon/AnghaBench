
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; } ;
struct drm_i915_private {TYPE_1__ lpe_audio; } ;


 int DRM_ERROR_RATELIMITED (char*,int) ;
 int HAS_LPE_AUDIO (struct drm_i915_private*) ;
 int generic_handle_irq (int ) ;

void intel_lpe_audio_irq_handler(struct drm_i915_private *dev_priv)
{
 int ret;

 if (!HAS_LPE_AUDIO(dev_priv))
  return;

 ret = generic_handle_irq(dev_priv->lpe_audio.irq);
 if (ret)
  DRM_ERROR_RATELIMITED("error handling LPE audio irq: %d\n",
    ret);
}
