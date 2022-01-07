
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int irq_enabled; TYPE_1__* pdev; } ;
struct TYPE_5__ {int irqs_enabled; } ;
struct drm_i915_private {TYPE_3__ drm; TYPE_2__ runtime_pm; } ;
struct TYPE_4__ {int irq; } ;


 int DRIVER_NAME ;
 int IRQF_SHARED ;
 int intel_irq_handler (struct drm_i915_private*) ;
 int intel_irq_postinstall (struct drm_i915_private*) ;
 int intel_irq_reset (struct drm_i915_private*) ;
 int request_irq (int,int ,int ,int ,struct drm_i915_private*) ;

int intel_irq_install(struct drm_i915_private *dev_priv)
{
 int irq = dev_priv->drm.pdev->irq;
 int ret;






 dev_priv->runtime_pm.irqs_enabled = 1;

 dev_priv->drm.irq_enabled = 1;

 intel_irq_reset(dev_priv);

 ret = request_irq(irq, intel_irq_handler(dev_priv),
     IRQF_SHARED, DRIVER_NAME, dev_priv);
 if (ret < 0) {
  dev_priv->drm.irq_enabled = 0;
  return ret;
 }

 intel_irq_postinstall(dev_priv);

 return ret;
}
