
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int rotation; int plane; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct TYPE_3__ {int dev; } ;
struct intel_plane {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;
 unsigned int DRM_MODE_REFLECT_X ;
 unsigned int DRM_MODE_ROTATE_180 ;
 int EINVAL ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_plane* to_intel_plane (int ) ;

int chv_plane_check_rotation(const struct intel_plane_state *plane_state)
{
 struct intel_plane *plane = to_intel_plane(plane_state->base.plane);
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 unsigned int rotation = plane_state->base.rotation;


 if (IS_CHERRYVIEW(dev_priv) &&
     rotation & DRM_MODE_ROTATE_180 &&
     rotation & DRM_MODE_REFLECT_X) {
  DRM_DEBUG_KMS("Cannot rotate and reflect at the same time\n");
  return -EINVAL;
 }

 return 0;
}
