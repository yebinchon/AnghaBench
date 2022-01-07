
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct intel_plane {int id; int pipe; TYPE_2__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_3__ {int lock; } ;
struct drm_i915_private {TYPE_1__ uncore; } ;
typedef enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_WRITE_FW (int ,int ) ;
 int PLANE_CTL (int,int) ;
 int PLANE_CUS_CTL (int,int) ;
 int PLANE_SURF (int,int) ;
 scalar_t__ icl_is_hdr_plane (struct drm_i915_private*,int) ;
 int skl_write_plane_wm (struct intel_plane*,struct intel_crtc_state const*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void
skl_disable_plane(struct intel_plane *plane,
    const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 enum plane_id plane_id = plane->id;
 enum pipe pipe = plane->pipe;
 unsigned long irqflags;

 spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);

 if (icl_is_hdr_plane(dev_priv, plane_id))
  I915_WRITE_FW(PLANE_CUS_CTL(pipe, plane_id), 0);

 skl_write_plane_wm(plane, crtc_state);

 I915_WRITE_FW(PLANE_CTL(pipe, plane_id), 0);
 I915_WRITE_FW(PLANE_SURF(pipe, plane_id), 0);

 spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
}
