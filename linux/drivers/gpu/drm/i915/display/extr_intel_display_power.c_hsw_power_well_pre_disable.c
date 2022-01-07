
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct drm_i915_private {int dummy; } ;


 int gen8_irq_power_well_pre_disable (struct drm_i915_private*,scalar_t__) ;

__attribute__((used)) static void hsw_power_well_pre_disable(struct drm_i915_private *dev_priv,
           u8 irq_pipe_mask)
{
 if (irq_pipe_mask)
  gen8_irq_power_well_pre_disable(dev_priv, irq_pipe_mask);
}
