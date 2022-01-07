
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct intel_plane {int pipe; TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_4__ {int lock; } ;
struct drm_i915_private {TYPE_2__ uncore; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_WRITE_FW (int ,int ) ;
 scalar_t__ IS_IVYBRIDGE (struct drm_i915_private*) ;
 int SPRCTL (int) ;
 int SPRSCALE (int) ;
 int SPRSURF (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void
ivb_disable_plane(struct intel_plane *plane,
    const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 enum pipe pipe = plane->pipe;
 unsigned long irqflags;

 spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);

 I915_WRITE_FW(SPRCTL(pipe), 0);

 if (IS_IVYBRIDGE(dev_priv))
  I915_WRITE_FW(SPRSCALE(pipe), 0);
 I915_WRITE_FW(SPRSURF(pipe), 0);

 spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
}
