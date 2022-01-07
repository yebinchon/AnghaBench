
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum i9xx_plane_id { ____Placeholder_i9xx_plane_id } i9xx_plane_id ;


 int HAS_FBC (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 scalar_t__ IS_IVYBRIDGE (struct drm_i915_private*) ;
 int PLANE_A ;
 int PLANE_B ;
 int PLANE_C ;

__attribute__((used)) static bool i9xx_plane_has_fbc(struct drm_i915_private *dev_priv,
          enum i9xx_plane_id i9xx_plane)
{
 if (!HAS_FBC(dev_priv))
  return 0;

 if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
  return i9xx_plane == PLANE_A;
 else if (IS_IVYBRIDGE(dev_priv))
  return i9xx_plane == PLANE_A || i9xx_plane == PLANE_B ||
   i9xx_plane == PLANE_C;
 else if (INTEL_GEN(dev_priv) >= 4)
  return i9xx_plane == PLANE_A || i9xx_plane == PLANE_B;
 else
  return i9xx_plane == PLANE_A;
}
