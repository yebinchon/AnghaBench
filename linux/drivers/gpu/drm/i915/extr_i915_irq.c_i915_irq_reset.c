
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;
struct drm_i915_private {struct intel_uncore uncore; } ;


 int GEN2_ ;
 int GEN3_IRQ_RESET (struct intel_uncore*,int ) ;
 scalar_t__ I915_HAS_HOTPLUG (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PORT_HOTPLUG_STAT ;
 int i915_hotplug_interrupt_update (struct drm_i915_private*,int,int ) ;
 int i9xx_pipestat_irq_reset (struct drm_i915_private*) ;

__attribute__((used)) static void i915_irq_reset(struct drm_i915_private *dev_priv)
{
 struct intel_uncore *uncore = &dev_priv->uncore;

 if (I915_HAS_HOTPLUG(dev_priv)) {
  i915_hotplug_interrupt_update(dev_priv, 0xffffffff, 0);
  I915_WRITE(PORT_HOTPLUG_STAT, I915_READ(PORT_HOTPLUG_STAT));
 }

 i9xx_pipestat_irq_reset(dev_priv);

 GEN3_IRQ_RESET(uncore, GEN2_);
}
