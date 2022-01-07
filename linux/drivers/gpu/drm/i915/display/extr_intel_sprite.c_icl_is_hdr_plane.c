
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum plane_id { ____Placeholder_plane_id } plane_id ;


 int BIT (int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int icl_hdr_plane_mask () ;

bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum plane_id plane_id)
{
 return INTEL_GEN(dev_priv) >= 11 &&
  icl_hdr_plane_mask() & BIT(plane_id);
}
