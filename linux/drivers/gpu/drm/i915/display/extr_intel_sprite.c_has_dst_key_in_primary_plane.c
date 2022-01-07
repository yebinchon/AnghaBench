
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;

__attribute__((used)) static bool has_dst_key_in_primary_plane(struct drm_i915_private *dev_priv)
{
 return INTEL_GEN(dev_priv) >= 9;
}
