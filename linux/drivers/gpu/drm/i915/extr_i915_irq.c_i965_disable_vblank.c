
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_private {int irq_lock; } ;
struct drm_crtc {int dev; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_2__ {int pipe; } ;


 int PIPE_START_VBLANK_INTERRUPT_STATUS ;
 int i915_disable_pipestat (struct drm_i915_private*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct drm_i915_private* to_i915 (int ) ;
 TYPE_1__* to_intel_crtc (struct drm_crtc*) ;

void i965_disable_vblank(struct drm_crtc *crtc)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 enum pipe pipe = to_intel_crtc(crtc)->pipe;
 unsigned long irqflags;

 spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
 i915_disable_pipestat(dev_priv, pipe,
         PIPE_START_VBLANK_INTERRUPT_STATUS);
 spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
}
