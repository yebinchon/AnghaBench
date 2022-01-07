
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int dev; } ;
struct intel_plane {int i9xx_plane; TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_4__ {int lock; } ;
struct drm_i915_private {TYPE_2__ uncore; } ;
typedef enum i9xx_plane_id { ____Placeholder_i9xx_plane_id } i9xx_plane_id ;


 int DSPADDR (int) ;
 int DSPCNTR (int) ;
 int DSPSURF (int) ;
 int I915_WRITE_FW (int ,int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int i9xx_plane_ctl_crtc (struct intel_crtc_state const*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void i9xx_disable_plane(struct intel_plane *plane,
          const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
 unsigned long irqflags;
 u32 dspcntr;
 dspcntr = i9xx_plane_ctl_crtc(crtc_state);

 spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);

 I915_WRITE_FW(DSPCNTR(i9xx_plane), dspcntr);
 if (INTEL_GEN(dev_priv) >= 4)
  I915_WRITE_FW(DSPSURF(i9xx_plane), 0);
 else
  I915_WRITE_FW(DSPADDR(i9xx_plane), 0);

 spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
}
