
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;
struct drm_i915_private {int irq_lock; scalar_t__ display_irqs_enabled; int gt; struct intel_uncore uncore; } ;


 int GEN3_IRQ_RESET (struct intel_uncore*,int ) ;
 int GEN8_MASTER_IRQ ;
 int GEN8_PCU_ ;
 int I915_WRITE (int ,int ) ;
 int POSTING_READ (int ) ;
 int gen8_gt_irq_reset (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int vlv_display_irq_reset (struct drm_i915_private*) ;

__attribute__((used)) static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
{
 struct intel_uncore *uncore = &dev_priv->uncore;

 I915_WRITE(GEN8_MASTER_IRQ, 0);
 POSTING_READ(GEN8_MASTER_IRQ);

 gen8_gt_irq_reset(&dev_priv->gt);

 GEN3_IRQ_RESET(uncore, GEN8_PCU_);

 spin_lock_irq(&dev_priv->irq_lock);
 if (dev_priv->display_irqs_enabled)
  vlv_display_irq_reset(dev_priv);
 spin_unlock_irq(&dev_priv->irq_lock);
}
