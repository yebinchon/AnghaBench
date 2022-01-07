
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct drm_framebuffer* fb; int plane; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct TYPE_6__ {int dev; } ;
struct intel_plane {scalar_t__ id; TYPE_3__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {scalar_t__ modifier; unsigned int* pitches; TYPE_1__* format; } ;
struct TYPE_4__ {int num_planes; } ;


 scalar_t__ DRM_FORMAT_MOD_LINEAR ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ PLANE_CURSOR ;
 int intel_tile_size (struct drm_i915_private*) ;
 scalar_t__ is_ccs_modifier (scalar_t__) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_plane* to_intel_plane (int ) ;

bool intel_plane_can_remap(const struct intel_plane_state *plane_state)
{
 struct intel_plane *plane = to_intel_plane(plane_state->base.plane);
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 const struct drm_framebuffer *fb = plane_state->base.fb;
 int i;


 if (plane->id == PLANE_CURSOR)
  return 0;







 if (INTEL_GEN(dev_priv) < 4)
  return 0;





 if (is_ccs_modifier(fb->modifier))
  return 0;


 if (fb->modifier == DRM_FORMAT_MOD_LINEAR) {
  unsigned int alignment = intel_tile_size(dev_priv) - 1;

  for (i = 0; i < fb->format->num_planes; i++) {
   if (fb->pitches[i] & alignment)
    return 0;
  }
 }

 return 1;
}
