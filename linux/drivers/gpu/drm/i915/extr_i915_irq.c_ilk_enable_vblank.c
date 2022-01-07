
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_i915_private {int irq_lock; } ;
struct drm_crtc {int dev; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_2__ {int pipe; } ;


 int DE_PIPE_VBLANK (int) ;
 int DE_PIPE_VBLANK_IVB (int) ;
 scalar_t__ HAS_PSR (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int drm_crtc_vblank_restore (struct drm_crtc*) ;
 int ilk_enable_display_irq (struct drm_i915_private*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct drm_i915_private* to_i915 (int ) ;
 TYPE_1__* to_intel_crtc (struct drm_crtc*) ;

int ilk_enable_vblank(struct drm_crtc *crtc)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 enum pipe pipe = to_intel_crtc(crtc)->pipe;
 unsigned long irqflags;
 u32 bit = INTEL_GEN(dev_priv) >= 7 ?
  DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);

 spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
 ilk_enable_display_irq(dev_priv, bit);
 spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);




 if (HAS_PSR(dev_priv))
  drm_crtc_vblank_restore(crtc);

 return 0;
}
