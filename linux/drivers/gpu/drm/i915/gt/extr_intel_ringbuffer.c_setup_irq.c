
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int irq_disable; int irq_enable; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 int gen5_irq_disable ;
 int gen5_irq_enable ;
 int gen6_irq_disable ;
 int gen6_irq_enable ;
 int i8xx_irq_disable ;
 int i8xx_irq_enable ;
 int i9xx_irq_disable ;
 int i9xx_irq_enable ;

__attribute__((used)) static void setup_irq(struct intel_engine_cs *engine)
{
 struct drm_i915_private *i915 = engine->i915;

 if (INTEL_GEN(i915) >= 6) {
  engine->irq_enable = gen6_irq_enable;
  engine->irq_disable = gen6_irq_disable;
 } else if (INTEL_GEN(i915) >= 5) {
  engine->irq_enable = gen5_irq_enable;
  engine->irq_disable = gen5_irq_disable;
 } else if (INTEL_GEN(i915) >= 3) {
  engine->irq_enable = i9xx_irq_enable;
  engine->irq_disable = i9xx_irq_disable;
 } else {
  engine->irq_enable = i8xx_irq_enable;
  engine->irq_disable = i8xx_irq_disable;
 }
}
