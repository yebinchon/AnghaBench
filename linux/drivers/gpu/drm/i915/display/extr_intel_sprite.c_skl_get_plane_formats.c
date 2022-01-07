
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int ARRAY_SIZE (int const*) ;
 int const* skl_planar_formats ;
 int const* skl_plane_formats ;
 scalar_t__ skl_plane_has_planar (struct drm_i915_private*,int,int) ;

__attribute__((used)) static const u32 *skl_get_plane_formats(struct drm_i915_private *dev_priv,
     enum pipe pipe, enum plane_id plane_id,
     int *num_formats)
{
 if (skl_plane_has_planar(dev_priv, pipe, plane_id)) {
  *num_formats = ARRAY_SIZE(skl_planar_formats);
  return skl_planar_formats;
 } else {
  *num_formats = ARRAY_SIZE(skl_plane_formats);
  return skl_plane_formats;
 }
}
