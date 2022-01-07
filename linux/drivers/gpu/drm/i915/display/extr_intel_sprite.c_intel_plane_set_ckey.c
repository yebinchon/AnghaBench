
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_intel_sprite_colorkey {int flags; } ;
struct TYPE_3__ {int plane; } ;
struct intel_plane_state {struct drm_intel_sprite_colorkey ckey; TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_plane {scalar_t__ id; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;


 int I915_SET_COLORKEY_DESTINATION ;
 int I915_SET_COLORKEY_SOURCE ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ PLANE_PRIMARY ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_plane* to_intel_plane (int ) ;

__attribute__((used)) static void intel_plane_set_ckey(struct intel_plane_state *plane_state,
     const struct drm_intel_sprite_colorkey *set)
{
 struct intel_plane *plane = to_intel_plane(plane_state->base.plane);
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 struct drm_intel_sprite_colorkey *key = &plane_state->ckey;

 *key = *set;





 if (plane->id == PLANE_PRIMARY &&
     set->flags & I915_SET_COLORKEY_SOURCE)
  key->flags = 0;





 if (INTEL_GEN(dev_priv) >= 9 && plane->id != PLANE_PRIMARY &&
     set->flags & I915_SET_COLORKEY_DESTINATION)
  key->flags = 0;
}
