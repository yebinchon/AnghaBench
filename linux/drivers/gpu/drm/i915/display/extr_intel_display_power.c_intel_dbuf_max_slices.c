
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;

__attribute__((used)) static u8 intel_dbuf_max_slices(struct drm_i915_private *dev_priv)
{
 if (INTEL_GEN(dev_priv) < 11)
  return 1;
 return 2;
}
