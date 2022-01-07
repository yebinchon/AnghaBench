
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int irqs_enabled; } ;
struct TYPE_5__ {int irq_enabled; TYPE_1__* pdev; } ;
struct drm_i915_private {TYPE_3__ runtime_pm; TYPE_2__ drm; } ;
struct TYPE_4__ {int irq; } ;


 int free_irq (int,struct drm_i915_private*) ;
 int intel_hpd_cancel_work (struct drm_i915_private*) ;
 int intel_irq_reset (struct drm_i915_private*) ;

void intel_irq_uninstall(struct drm_i915_private *dev_priv)
{
 int irq = dev_priv->drm.pdev->irq;







 if (!dev_priv->drm.irq_enabled)
  return;

 dev_priv->drm.irq_enabled = 0;

 intel_irq_reset(dev_priv);

 free_irq(irq, dev_priv);

 intel_hpd_cancel_work(dev_priv);
 dev_priv->runtime_pm.irqs_enabled = 0;
}
