
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; } ;
struct drm_i915_private {TYPE_1__ lpe_audio; } ;


 int WARN_ON (int) ;
 int handle_simple_irq ;
 int intel_irqs_enabled (struct drm_i915_private*) ;
 int irq_set_chip_and_handler_name (int,int *,int ,char*) ;
 int irq_set_chip_data (int,struct drm_i915_private*) ;
 int lpe_audio_irqchip ;

__attribute__((used)) static int lpe_audio_irq_init(struct drm_i915_private *dev_priv)
{
 int irq = dev_priv->lpe_audio.irq;

 WARN_ON(!intel_irqs_enabled(dev_priv));
 irq_set_chip_and_handler_name(irq,
    &lpe_audio_irqchip,
    handle_simple_irq,
    "hdmi_lpe_audio_irq_handler");

 return irq_set_chip_data(irq, dev_priv);
}
