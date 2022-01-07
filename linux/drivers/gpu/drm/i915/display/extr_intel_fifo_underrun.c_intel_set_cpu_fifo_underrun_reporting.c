
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int irq_lock; int drm; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int __intel_set_cpu_fifo_underrun_reporting (int *,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool intel_set_cpu_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
        enum pipe pipe, bool enable)
{
 unsigned long flags;
 bool ret;

 spin_lock_irqsave(&dev_priv->irq_lock, flags);
 ret = __intel_set_cpu_fifo_underrun_reporting(&dev_priv->drm, pipe,
            enable);
 spin_unlock_irqrestore(&dev_priv->irq_lock, flags);

 return ret;
}
