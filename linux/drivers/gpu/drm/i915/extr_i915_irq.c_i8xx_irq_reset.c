
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;
struct drm_i915_private {struct intel_uncore uncore; } ;


 int GEN2_IRQ_RESET (struct intel_uncore*) ;
 int i9xx_pipestat_irq_reset (struct drm_i915_private*) ;

__attribute__((used)) static void i8xx_irq_reset(struct drm_i915_private *dev_priv)
{
 struct intel_uncore *uncore = &dev_priv->uncore;

 i9xx_pipestat_irq_reset(dev_priv);

 GEN2_IRQ_RESET(uncore);
}
