
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private const*) ;

__attribute__((used)) static unsigned int
ilk_display_fifo_size(const struct drm_i915_private *dev_priv)
{
 if (INTEL_GEN(dev_priv) >= 8)
  return 3072;
 else if (INTEL_GEN(dev_priv) >= 7)
  return 768;
 else
  return 512;
}
