
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ rotation; scalar_t__ pixel_blend_mode; int adjusted_y; } ;
struct TYPE_12__ {int mode_flags; int hsw_bdw_pixel_rate; } ;
struct TYPE_11__ {TYPE_2__* format; int stride; } ;
struct intel_fbc_state_cache {int flags; TYPE_8__ plane; TYPE_4__ crtc; TYPE_3__ fb; int vma; } ;
struct TYPE_15__ {int size; } ;
struct intel_fbc {char* no_fbc_reason; int threshold; struct intel_fbc_state_cache state_cache; TYPE_7__ compressed_fb; scalar_t__ underrun_detected; } ;
struct TYPE_9__ {int dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct TYPE_13__ {int cdclk; } ;
struct TYPE_14__ {TYPE_5__ hw; } ;
struct drm_i915_private {TYPE_6__ cdclk; struct intel_fbc fbc; } ;
struct TYPE_10__ {scalar_t__ has_alpha; int format; } ;


 scalar_t__ DRM_MODE_BLEND_PIXEL_NONE ;
 int DRM_MODE_FLAG_INTERLACE ;
 scalar_t__ DRM_MODE_ROTATE_0 ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 int IS_G4X (struct drm_i915_private*) ;
 scalar_t__ IS_GEN_RANGE (struct drm_i915_private*,int,int) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 int PLANE_HAS_FENCE ;
 int intel_fbc_calculate_cfb_size (struct drm_i915_private*,struct intel_fbc_state_cache*) ;
 int intel_fbc_hw_tracking_covers_screen (struct intel_crtc*) ;
 int pixel_format_is_valid (struct drm_i915_private*,int ) ;
 int stride_is_valid (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool intel_fbc_can_activate(struct intel_crtc *crtc)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 struct intel_fbc *fbc = &dev_priv->fbc;
 struct intel_fbc_state_cache *cache = &fbc->state_cache;




 if (fbc->underrun_detected) {
  fbc->no_fbc_reason = "underrun detected";
  return 0;
 }

 if (!cache->vma) {
  fbc->no_fbc_reason = "primary plane not visible";
  return 0;
 }

 if (cache->crtc.mode_flags & DRM_MODE_FLAG_INTERLACE) {
  fbc->no_fbc_reason = "incompatible mode";
  return 0;
 }

 if (!intel_fbc_hw_tracking_covers_screen(crtc)) {
  fbc->no_fbc_reason = "mode too large for compression";
  return 0;
 }
 if (!(cache->flags & PLANE_HAS_FENCE)) {
  fbc->no_fbc_reason = "framebuffer not tiled or fenced";
  return 0;
 }
 if (INTEL_GEN(dev_priv) <= 4 && !IS_G4X(dev_priv) &&
     cache->plane.rotation != DRM_MODE_ROTATE_0) {
  fbc->no_fbc_reason = "rotation unsupported";
  return 0;
 }

 if (!stride_is_valid(dev_priv, cache->fb.stride)) {
  fbc->no_fbc_reason = "framebuffer stride not supported";
  return 0;
 }

 if (!pixel_format_is_valid(dev_priv, cache->fb.format->format)) {
  fbc->no_fbc_reason = "pixel format is invalid";
  return 0;
 }

 if (cache->plane.pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE &&
     cache->fb.format->has_alpha) {
  fbc->no_fbc_reason = "per-pixel alpha blending is incompatible with FBC";
  return 0;
 }


 if ((IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) &&
     cache->crtc.hsw_bdw_pixel_rate >= dev_priv->cdclk.hw.cdclk * 95 / 100) {
  fbc->no_fbc_reason = "pixel rate is too big";
  return 0;
 }
 if (intel_fbc_calculate_cfb_size(dev_priv, &fbc->state_cache) >
     fbc->compressed_fb.size * fbc->threshold) {
  fbc->no_fbc_reason = "CFB requirements changed";
  return 0;
 }






 if (IS_GEN_RANGE(dev_priv, 9, 10) &&
     (fbc->state_cache.plane.adjusted_y & 3)) {
  fbc->no_fbc_reason = "plane Y offset is misaligned";
  return 0;
 }

 return 1;
}
