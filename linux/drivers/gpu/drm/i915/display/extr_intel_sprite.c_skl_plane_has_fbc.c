
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int HAS_FBC (struct drm_i915_private*) ;
 int PIPE_A ;
 int PLANE_PRIMARY ;

__attribute__((used)) static bool skl_plane_has_fbc(struct drm_i915_private *dev_priv,
         enum pipe pipe, enum plane_id plane_id)
{
 if (!HAS_FBC(dev_priv))
  return 0;

 return pipe == PIPE_A && plane_id == PLANE_PRIMARY;
}
