
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_6__ {int crtc_h; int crtc_w; scalar_t__ visible; } ;
struct intel_plane_state {int ctl; TYPE_2__ base; } ;
struct TYPE_7__ {void* base; void* size; void* cntl; } ;
struct TYPE_5__ {int dev; } ;
struct intel_plane {int pipe; TYPE_3__ cursor; TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_8__ {int lock; } ;
struct drm_i915_private {TYPE_4__ uncore; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int CURBASE (int) ;
 int CURCNTR (int) ;
 int CURPOS (int) ;
 int CUR_FBC_CTL (int) ;
 int CUR_FBC_CTL_EN ;
 scalar_t__ HAS_CUR_FBC (struct drm_i915_private*) ;
 int I915_WRITE_FW (int ,void*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int i9xx_cursor_ctl_crtc (struct intel_crtc_state const*) ;
 void* intel_cursor_base (struct intel_plane_state const*) ;
 void* intel_cursor_position (struct intel_plane_state const*) ;
 int skl_write_cursor_wm (struct intel_plane*,struct intel_crtc_state const*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void i9xx_update_cursor(struct intel_plane *plane,
          const struct intel_crtc_state *crtc_state,
          const struct intel_plane_state *plane_state)
{
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 enum pipe pipe = plane->pipe;
 u32 cntl = 0, base = 0, pos = 0, fbc_ctl = 0;
 unsigned long irqflags;

 if (plane_state && plane_state->base.visible) {
  cntl = plane_state->ctl |
   i9xx_cursor_ctl_crtc(crtc_state);

  if (plane_state->base.crtc_h != plane_state->base.crtc_w)
   fbc_ctl = CUR_FBC_CTL_EN | (plane_state->base.crtc_h - 1);

  base = intel_cursor_base(plane_state);
  pos = intel_cursor_position(plane_state);
 }

 spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 if (INTEL_GEN(dev_priv) >= 9)
  skl_write_cursor_wm(plane, crtc_state);

 if (plane->cursor.base != base ||
     plane->cursor.size != fbc_ctl ||
     plane->cursor.cntl != cntl) {
  if (HAS_CUR_FBC(dev_priv))
   I915_WRITE_FW(CUR_FBC_CTL(pipe), fbc_ctl);
  I915_WRITE_FW(CURCNTR(pipe), cntl);
  I915_WRITE_FW(CURPOS(pipe), pos);
  I915_WRITE_FW(CURBASE(pipe), base);

  plane->cursor.base = base;
  plane->cursor.size = fbc_ctl;
  plane->cursor.cntl = cntl;
 } else {
  I915_WRITE_FW(CURPOS(pipe), pos);
  I915_WRITE_FW(CURBASE(pipe), base);
 }

 spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
}
