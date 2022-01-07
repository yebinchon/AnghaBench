
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {int dummy; } ;
struct TYPE_2__ {int irq; int * platdev; } ;
struct drm_i915_private {TYPE_1__ lpe_audio; } ;


 int HAS_LPE_AUDIO (struct drm_i915_private*) ;
 int irq_free_desc (int) ;
 struct irq_desc* irq_to_desc (int) ;
 int lpe_audio_platdev_destroy (struct drm_i915_private*) ;

void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
{
 struct irq_desc *desc;

 if (!HAS_LPE_AUDIO(dev_priv))
  return;

 desc = irq_to_desc(dev_priv->lpe_audio.irq);

 lpe_audio_platdev_destroy(dev_priv);

 irq_free_desc(dev_priv->lpe_audio.irq);

 dev_priv->lpe_audio.irq = -1;
 dev_priv->lpe_audio.platdev = ((void*)0);
}
