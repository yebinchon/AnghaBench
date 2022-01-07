
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_plane {scalar_t__ id; TYPE_1__ base; } ;
struct intel_crtc_state {int active_planes; } ;
struct drm_i915_private {int dummy; } ;


 int BIT (scalar_t__) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ PLANE_PRIMARY ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool need_plane_update(struct intel_plane *plane,
         const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);






 return crtc_state->active_planes & BIT(plane->id) ||
  (INTEL_GEN(dev_priv) < 9 &&
   plane->id == PLANE_PRIMARY);
}
