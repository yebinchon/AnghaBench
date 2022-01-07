
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_plane {int i9xx_plane; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum i9xx_plane_id { ____Placeholder_i9xx_plane_id } i9xx_plane_id ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_G4X (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int PLANE_B ;
 int PLANE_C ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool i9xx_plane_has_windowing(struct intel_plane *plane)
{
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;

 if (IS_CHERRYVIEW(dev_priv))
  return i9xx_plane == PLANE_B;
 else if (INTEL_GEN(dev_priv) >= 5 || IS_G4X(dev_priv))
  return 0;
 else if (IS_GEN(dev_priv, 4))
  return i9xx_plane == PLANE_C;
 else
  return i9xx_plane == PLANE_B ||
   i9xx_plane == PLANE_C;
}
