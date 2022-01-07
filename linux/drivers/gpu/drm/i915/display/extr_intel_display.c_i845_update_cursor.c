
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {unsigned int crtc_w; unsigned int crtc_h; scalar_t__ visible; } ;
struct intel_plane_state {scalar_t__ ctl; TYPE_2__ base; } ;
struct TYPE_7__ {scalar_t__ base; scalar_t__ size; scalar_t__ cntl; } ;
struct TYPE_5__ {int dev; } ;
struct intel_plane {TYPE_3__ cursor; TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_8__ {int lock; } ;
struct drm_i915_private {TYPE_4__ uncore; } ;


 int CURBASE (int ) ;
 int CURCNTR (int ) ;
 int CURPOS (int ) ;
 int CURSIZE ;
 int I915_WRITE_FW (int ,scalar_t__) ;
 int PIPE_A ;
 scalar_t__ i845_cursor_ctl_crtc (struct intel_crtc_state const*) ;
 scalar_t__ intel_cursor_base (struct intel_plane_state const*) ;
 scalar_t__ intel_cursor_position (struct intel_plane_state const*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void i845_update_cursor(struct intel_plane *plane,
          const struct intel_crtc_state *crtc_state,
          const struct intel_plane_state *plane_state)
{
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 u32 cntl = 0, base = 0, pos = 0, size = 0;
 unsigned long irqflags;

 if (plane_state && plane_state->base.visible) {
  unsigned int width = plane_state->base.crtc_w;
  unsigned int height = plane_state->base.crtc_h;

  cntl = plane_state->ctl |
   i845_cursor_ctl_crtc(crtc_state);

  size = (height << 12) | width;

  base = intel_cursor_base(plane_state);
  pos = intel_cursor_position(plane_state);
 }

 spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);




 if (plane->cursor.base != base ||
     plane->cursor.size != size ||
     plane->cursor.cntl != cntl) {
  I915_WRITE_FW(CURCNTR(PIPE_A), 0);
  I915_WRITE_FW(CURBASE(PIPE_A), base);
  I915_WRITE_FW(CURSIZE, size);
  I915_WRITE_FW(CURPOS(PIPE_A), pos);
  I915_WRITE_FW(CURCNTR(PIPE_A), cntl);

  plane->cursor.base = base;
  plane->cursor.size = size;
  plane->cursor.cntl = cntl;
 } else {
  I915_WRITE_FW(CURPOS(PIPE_A), pos);
 }

 spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
}
