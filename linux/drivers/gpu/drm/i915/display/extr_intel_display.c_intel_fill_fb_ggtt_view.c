
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_ggtt_view {int rotated; int type; } ;
struct drm_framebuffer {int dummy; } ;
struct TYPE_2__ {int rot_info; } ;


 int I915_GGTT_VIEW_NORMAL ;
 int I915_GGTT_VIEW_ROTATED ;
 scalar_t__ drm_rotation_90_or_270 (unsigned int) ;
 TYPE_1__* to_intel_framebuffer (struct drm_framebuffer const*) ;

__attribute__((used)) static void
intel_fill_fb_ggtt_view(struct i915_ggtt_view *view,
   const struct drm_framebuffer *fb,
   unsigned int rotation)
{
 view->type = I915_GGTT_VIEW_NORMAL;
 if (drm_rotation_90_or_270(rotation)) {
  view->type = I915_GGTT_VIEW_ROTATED;
  view->rotated = to_intel_framebuffer(fb)->rot_info;
 }
}
