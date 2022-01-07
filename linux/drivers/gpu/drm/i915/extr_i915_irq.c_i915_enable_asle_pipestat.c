
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int irq_lock; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 int PIPE_A ;
 int PIPE_B ;
 int PIPE_LEGACY_BLC_EVENT_STATUS ;
 int i915_enable_pipestat (struct drm_i915_private*,int ,int ) ;
 int i915_has_asle (struct drm_i915_private*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void i915_enable_asle_pipestat(struct drm_i915_private *dev_priv)
{
 if (!i915_has_asle(dev_priv))
  return;

 spin_lock_irq(&dev_priv->irq_lock);

 i915_enable_pipestat(dev_priv, PIPE_B, PIPE_LEGACY_BLC_EVENT_STATUS);
 if (INTEL_GEN(dev_priv) >= 4)
  i915_enable_pipestat(dev_priv, PIPE_A,
         PIPE_LEGACY_BLC_EVENT_STATUS);

 spin_unlock_irq(&dev_priv->irq_lock);
}
