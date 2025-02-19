
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_4__ {int plane; } ;
struct intel_plane_state {TYPE_3__ view; TYPE_1__ base; } ;
struct TYPE_5__ {int dev; } ;
struct intel_plane {scalar_t__ has_fbc; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ I915_GGTT_VIEW_NORMAL ;
 int INTEL_GEN (struct drm_i915_private*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_plane* to_intel_plane (int ) ;

__attribute__((used)) static bool intel_plane_uses_fence(const struct intel_plane_state *plane_state)
{
 struct intel_plane *plane = to_intel_plane(plane_state->base.plane);
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);

 return INTEL_GEN(dev_priv) < 4 ||
  (plane->has_fbc &&
   plane_state->view.type == I915_GGTT_VIEW_NORMAL);
}
