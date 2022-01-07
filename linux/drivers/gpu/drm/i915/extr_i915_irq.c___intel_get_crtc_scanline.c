
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_crtc {int pipe; int scanline_offset; TYPE_1__ base; int active; } ;
struct drm_display_mode {int private_flags; int crtc_vtotal; int flags; } ;
struct drm_vblank_crtc {struct drm_display_mode hwmode; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_vblank_crtc* vblank; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DRM_MODE_FLAG_INTERLACE ;
 int DSL_LINEMASK_GEN2 ;
 int DSL_LINEMASK_GEN3 ;
 scalar_t__ HAS_DDI (struct drm_i915_private*) ;
 int I915_MODE_FLAG_GET_SCANLINE_FROM_TIMESTAMP ;
 int I915_READ_FW (int ) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int PIPEDSL (int) ;
 int __intel_get_crtc_scanline_from_timestamp (struct intel_crtc*) ;
 size_t drm_crtc_index (TYPE_1__*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 int udelay (int) ;

__attribute__((used)) static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
{
 struct drm_device *dev = crtc->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 const struct drm_display_mode *mode;
 struct drm_vblank_crtc *vblank;
 enum pipe pipe = crtc->pipe;
 int position, vtotal;

 if (!crtc->active)
  return -1;

 vblank = &crtc->base.dev->vblank[drm_crtc_index(&crtc->base)];
 mode = &vblank->hwmode;

 if (mode->private_flags & I915_MODE_FLAG_GET_SCANLINE_FROM_TIMESTAMP)
  return __intel_get_crtc_scanline_from_timestamp(crtc);

 vtotal = mode->crtc_vtotal;
 if (mode->flags & DRM_MODE_FLAG_INTERLACE)
  vtotal /= 2;

 if (IS_GEN(dev_priv, 2))
  position = I915_READ_FW(PIPEDSL(pipe)) & DSL_LINEMASK_GEN2;
 else
  position = I915_READ_FW(PIPEDSL(pipe)) & DSL_LINEMASK_GEN3;
 if (HAS_DDI(dev_priv) && !position) {
  int i, temp;

  for (i = 0; i < 100; i++) {
   udelay(1);
   temp = I915_READ_FW(PIPEDSL(pipe)) & DSL_LINEMASK_GEN3;
   if (temp != position) {
    position = temp;
    break;
   }
  }
 }





 return (position + crtc->scanline_offset) % vtotal;
}
