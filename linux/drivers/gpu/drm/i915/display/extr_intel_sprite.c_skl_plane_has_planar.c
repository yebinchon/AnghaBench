
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 scalar_t__ IS_BROXTON (struct drm_i915_private*) ;
 int IS_GEMINILAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_SKYLAKE (struct drm_i915_private*) ;
 int PIPE_C ;
 int PLANE_PRIMARY ;
 int PLANE_SPRITE0 ;

__attribute__((used)) static bool skl_plane_has_planar(struct drm_i915_private *dev_priv,
     enum pipe pipe, enum plane_id plane_id)
{

 if (IS_SKYLAKE(dev_priv) || IS_BROXTON(dev_priv))
  return 0;

 if (IS_GEN(dev_priv, 9) && !IS_GEMINILAKE(dev_priv) && pipe == PIPE_C)
  return 0;

 if (plane_id != PLANE_PRIMARY && plane_id != PLANE_SPRITE0)
  return 0;

 return 1;
}
