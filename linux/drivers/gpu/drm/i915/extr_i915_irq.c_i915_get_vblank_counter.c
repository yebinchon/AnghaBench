
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct drm_display_mode {int crtc_htotal; int crtc_hsync_start; int crtc_vblank_start; int flags; } ;
struct drm_vblank_crtc {int max_vblank_count; struct drm_display_mode hwmode; } ;
struct TYPE_5__ {int lock; } ;
struct TYPE_4__ {struct drm_vblank_crtc* vblank; } ;
struct drm_i915_private {TYPE_2__ uncore; TYPE_1__ drm; } ;
struct drm_crtc {int dev; } ;
typedef int i915_reg_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_6__ {int pipe; } ;


 int DIV_ROUND_UP (int,int) ;
 int DRM_MODE_FLAG_INTERLACE ;
 int I915_READ_FW (int ) ;
 int PIPEFRAME (int) ;
 int PIPEFRAMEPIXEL (int) ;
 int PIPE_FRAME_HIGH_MASK ;
 int PIPE_FRAME_HIGH_SHIFT ;
 int PIPE_FRAME_LOW_SHIFT ;
 int PIPE_PIXEL_MASK ;
 size_t drm_crtc_index (struct drm_crtc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct drm_i915_private* to_i915 (int ) ;
 TYPE_3__* to_intel_crtc (struct drm_crtc*) ;

u32 i915_get_vblank_counter(struct drm_crtc *crtc)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 struct drm_vblank_crtc *vblank = &dev_priv->drm.vblank[drm_crtc_index(crtc)];
 const struct drm_display_mode *mode = &vblank->hwmode;
 enum pipe pipe = to_intel_crtc(crtc)->pipe;
 i915_reg_t high_frame, low_frame;
 u32 high1, high2, low, pixel, vbl_start, hsync_start, htotal;
 unsigned long irqflags;
 if (!vblank->max_vblank_count)
  return 0;

 htotal = mode->crtc_htotal;
 hsync_start = mode->crtc_hsync_start;
 vbl_start = mode->crtc_vblank_start;
 if (mode->flags & DRM_MODE_FLAG_INTERLACE)
  vbl_start = DIV_ROUND_UP(vbl_start, 2);


 vbl_start *= htotal;


 vbl_start -= htotal - hsync_start;

 high_frame = PIPEFRAME(pipe);
 low_frame = PIPEFRAMEPIXEL(pipe);

 spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);






 do {
  high1 = I915_READ_FW(high_frame) & PIPE_FRAME_HIGH_MASK;
  low = I915_READ_FW(low_frame);
  high2 = I915_READ_FW(high_frame) & PIPE_FRAME_HIGH_MASK;
 } while (high1 != high2);

 spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);

 high1 >>= PIPE_FRAME_HIGH_SHIFT;
 pixel = low & PIPE_PIXEL_MASK;
 low >>= PIPE_FRAME_LOW_SHIFT;






 return (((high1 << 8) | low) + (pixel >= vbl_start)) & 0xffffff;
}
