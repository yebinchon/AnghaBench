
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_crtc {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct drm_i915_private {TYPE_1__ uncore; } ;
struct drm_display_mode {int private_flags; int crtc_htotal; int crtc_hsync_start; int crtc_vtotal; int crtc_vblank_start; int crtc_vblank_end; int flags; int crtc_clock; } ;
struct drm_device {int dummy; } ;
typedef int ktime_t ;


 int DIV_ROUND_UP (int,int) ;
 int DRM_DEBUG_DRIVER (char*,int ) ;
 int DRM_MODE_FLAG_INTERLACE ;
 int I915_MODE_FLAG_USE_SCANLINE_COUNTER ;
 int I915_READ_FW (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_G4X (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int PIPEFRAMEPIXEL (unsigned int) ;
 int PIPE_PIXEL_MASK ;
 int PIPE_PIXEL_SHIFT ;
 scalar_t__ WARN_ON (int) ;
 int __intel_get_crtc_scanline (struct intel_crtc*) ;
 struct intel_crtc* intel_get_crtc_for_pipe (struct drm_i915_private*,unsigned int) ;
 int ktime_get () ;
 int pipe_name (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

bool i915_get_crtc_scanoutpos(struct drm_device *dev, unsigned int pipe,
         bool in_vblank_irq, int *vpos, int *hpos,
         ktime_t *stime, ktime_t *etime,
         const struct drm_display_mode *mode)
{
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct intel_crtc *intel_crtc = intel_get_crtc_for_pipe(dev_priv,
        pipe);
 int position;
 int vbl_start, vbl_end, hsync_start, htotal, vtotal;
 unsigned long irqflags;
 bool use_scanline_counter = INTEL_GEN(dev_priv) >= 5 ||
  IS_G4X(dev_priv) || IS_GEN(dev_priv, 2) ||
  mode->private_flags & I915_MODE_FLAG_USE_SCANLINE_COUNTER;

 if (WARN_ON(!mode->crtc_clock)) {
  DRM_DEBUG_DRIVER("trying to get scanoutpos for disabled "
     "pipe %c\n", pipe_name(pipe));
  return 0;
 }

 htotal = mode->crtc_htotal;
 hsync_start = mode->crtc_hsync_start;
 vtotal = mode->crtc_vtotal;
 vbl_start = mode->crtc_vblank_start;
 vbl_end = mode->crtc_vblank_end;

 if (mode->flags & DRM_MODE_FLAG_INTERLACE) {
  vbl_start = DIV_ROUND_UP(vbl_start, 2);
  vbl_end /= 2;
  vtotal /= 2;
 }






 spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);




 if (stime)
  *stime = ktime_get();

 if (use_scanline_counter) {



  position = __intel_get_crtc_scanline(intel_crtc);
 } else {




  position = (I915_READ_FW(PIPEFRAMEPIXEL(pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;


  vbl_start *= htotal;
  vbl_end *= htotal;
  vtotal *= htotal;
  if (position >= vtotal)
   position = vtotal - 1;
  position = (position + htotal - hsync_start) % vtotal;
 }


 if (etime)
  *etime = ktime_get();



 spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);







 if (position >= vbl_start)
  position -= vbl_end;
 else
  position += vtotal - vbl_end;

 if (use_scanline_counter) {
  *vpos = position;
  *hpos = 0;
 } else {
  *vpos = position / htotal;
  *hpos = position - (*vpos * htotal);
 }

 return 1;
}
