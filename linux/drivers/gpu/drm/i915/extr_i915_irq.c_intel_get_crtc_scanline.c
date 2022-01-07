
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct TYPE_4__ {int lock; } ;
struct drm_i915_private {TYPE_2__ uncore; } ;


 int __intel_get_crtc_scanline (struct intel_crtc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct drm_i915_private* to_i915 (int ) ;

int intel_get_crtc_scanline(struct intel_crtc *crtc)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 unsigned long irqflags;
 int position;

 spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 position = __intel_get_crtc_scanline(crtc);
 spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);

 return position;
}
