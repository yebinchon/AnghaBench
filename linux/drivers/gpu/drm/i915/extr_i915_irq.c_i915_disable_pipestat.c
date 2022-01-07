
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int* pipestat_irq_mask; int irq_lock; } ;
typedef int i915_reg_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_WRITE (int ,int) ;
 int PIPESTAT (int) ;
 int PIPESTAT_INT_STATUS_MASK ;
 int POSTING_READ (int ) ;
 int WARN_ON (int) ;
 int WARN_ONCE (int,char*,int ,int) ;
 int i915_pipestat_enable_mask (struct drm_i915_private*,int) ;
 int intel_irqs_enabled (struct drm_i915_private*) ;
 int lockdep_assert_held (int *) ;
 int pipe_name (int) ;

void i915_disable_pipestat(struct drm_i915_private *dev_priv,
      enum pipe pipe, u32 status_mask)
{
 i915_reg_t reg = PIPESTAT(pipe);
 u32 enable_mask;

 WARN_ONCE(status_mask & ~PIPESTAT_INT_STATUS_MASK,
    "pipe %c: status_mask=0x%x\n",
    pipe_name(pipe), status_mask);

 lockdep_assert_held(&dev_priv->irq_lock);
 WARN_ON(!intel_irqs_enabled(dev_priv));

 if ((dev_priv->pipestat_irq_mask[pipe] & status_mask) == 0)
  return;

 dev_priv->pipestat_irq_mask[pipe] &= ~status_mask;
 enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);

 I915_WRITE(reg, enable_mask | status_mask);
 POSTING_READ(reg);
}
