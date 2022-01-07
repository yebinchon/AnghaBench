
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 int PIPE_C ;
 int PLANE_CURSOR ;
 int PLANE_PRIMARY ;
 int PLANE_SPRITE0 ;

__attribute__((used)) static bool skl_plane_has_ccs(struct drm_i915_private *dev_priv,
         enum pipe pipe, enum plane_id plane_id)
{
 if (plane_id == PLANE_CURSOR)
  return 0;

 if (INTEL_GEN(dev_priv) >= 10)
  return 1;

 if (IS_GEMINILAKE(dev_priv))
  return pipe != PIPE_C;

 return pipe != PIPE_C &&
  (plane_id == PLANE_PRIMARY ||
   plane_id == PLANE_SPRITE0);
}
