
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int irq_lock; scalar_t__ display_irqs_enabled; int gt; } ;


 int I915_WRITE (int ,int ) ;
 int MASTER_INTERRUPT_ENABLE ;
 int POSTING_READ (int ) ;
 int VLV_MASTER_IER ;
 int gen5_gt_irq_postinstall (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int vlv_display_irq_postinstall (struct drm_i915_private*) ;

__attribute__((used)) static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
{
 gen5_gt_irq_postinstall(&dev_priv->gt);

 spin_lock_irq(&dev_priv->irq_lock);
 if (dev_priv->display_irqs_enabled)
  vlv_display_irq_postinstall(dev_priv);
 spin_unlock_irq(&dev_priv->irq_lock);

 I915_WRITE(VLV_MASTER_IER, MASTER_INTERRUPT_ENABLE);
 POSTING_READ(VLV_MASTER_IER);
}
