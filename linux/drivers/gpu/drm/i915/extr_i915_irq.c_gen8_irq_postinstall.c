
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regs; } ;
struct drm_i915_private {TYPE_1__ uncore; int gt; } ;


 scalar_t__ HAS_PCH_SPLIT (struct drm_i915_private*) ;
 int gen8_de_irq_postinstall (struct drm_i915_private*) ;
 int gen8_gt_irq_postinstall (int *) ;
 int gen8_master_intr_enable (int ) ;
 int ibx_irq_postinstall (struct drm_i915_private*) ;
 int ibx_irq_pre_postinstall (struct drm_i915_private*) ;

__attribute__((used)) static void gen8_irq_postinstall(struct drm_i915_private *dev_priv)
{
 if (HAS_PCH_SPLIT(dev_priv))
  ibx_irq_pre_postinstall(dev_priv);

 gen8_gt_irq_postinstall(&dev_priv->gt);
 gen8_de_irq_postinstall(dev_priv);

 if (HAS_PCH_SPLIT(dev_priv))
  ibx_irq_postinstall(dev_priv);

 gen8_master_intr_enable(dev_priv->uncore.regs);
}
