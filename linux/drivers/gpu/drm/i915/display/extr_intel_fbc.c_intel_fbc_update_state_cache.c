
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_12__ {int y1; } ;
struct TYPE_18__ {int pixel_blend_mode; TYPE_10__ src; int visible; int rotation; struct drm_framebuffer* fb; } ;
struct intel_plane_state {int flags; TYPE_9__* vma; TYPE_6__ base; TYPE_5__* color_plane; } ;
struct TYPE_20__ {int stride; int format; } ;
struct TYPE_19__ {int src_w; int src_h; int y; int visible; int pixel_blend_mode; int adjusted_y; int adjusted_x; int rotation; } ;
struct TYPE_16__ {int hsw_bdw_pixel_rate; int mode_flags; } ;
struct intel_fbc_state_cache {int flags; TYPE_9__* vma; TYPE_8__ fb; TYPE_7__ plane; TYPE_4__ crtc; } ;
struct intel_fbc {struct intel_fbc_state_cache state_cache; } ;
struct TYPE_14__ {int flags; } ;
struct TYPE_15__ {TYPE_2__ adjusted_mode; } ;
struct intel_crtc_state {int pixel_rate; TYPE_3__ base; } ;
struct TYPE_13__ {int dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;
struct drm_framebuffer {int * pitches; int format; } ;
struct TYPE_21__ {int fence; } ;
struct TYPE_17__ {int y; int x; } ;


 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 int PLANE_HAS_FENCE ;
 scalar_t__ WARN_ON (int) ;
 int drm_rect_height (TYPE_10__*) ;
 int drm_rect_width (TYPE_10__*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void intel_fbc_update_state_cache(struct intel_crtc *crtc,
      struct intel_crtc_state *crtc_state,
      struct intel_plane_state *plane_state)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 struct intel_fbc *fbc = &dev_priv->fbc;
 struct intel_fbc_state_cache *cache = &fbc->state_cache;
 struct drm_framebuffer *fb = plane_state->base.fb;

 cache->vma = ((void*)0);
 cache->flags = 0;

 cache->crtc.mode_flags = crtc_state->base.adjusted_mode.flags;
 if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
  cache->crtc.hsw_bdw_pixel_rate = crtc_state->pixel_rate;

 cache->plane.rotation = plane_state->base.rotation;





 cache->plane.src_w = drm_rect_width(&plane_state->base.src) >> 16;
 cache->plane.src_h = drm_rect_height(&plane_state->base.src) >> 16;
 cache->plane.visible = plane_state->base.visible;
 cache->plane.adjusted_x = plane_state->color_plane[0].x;
 cache->plane.adjusted_y = plane_state->color_plane[0].y;
 cache->plane.y = plane_state->base.src.y1 >> 16;

 cache->plane.pixel_blend_mode = plane_state->base.pixel_blend_mode;

 if (!cache->plane.visible)
  return;

 cache->fb.format = fb->format;
 cache->fb.stride = fb->pitches[0];

 cache->vma = plane_state->vma;
 cache->flags = plane_state->flags;
 if (WARN_ON(cache->flags & PLANE_HAS_FENCE && !cache->vma->fence))
  cache->flags &= ~PLANE_HAS_FENCE;
}
