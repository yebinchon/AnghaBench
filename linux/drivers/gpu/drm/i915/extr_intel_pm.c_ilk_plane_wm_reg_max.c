
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private const*) ;

__attribute__((used)) static unsigned int
ilk_plane_wm_reg_max(const struct drm_i915_private *dev_priv,
       int level, bool is_sprite)
{
 if (INTEL_GEN(dev_priv) >= 8)

  return level == 0 ? 255 : 2047;
 else if (INTEL_GEN(dev_priv) >= 7)

  return level == 0 ? 127 : 1023;
 else if (!is_sprite)

  return level == 0 ? 127 : 511;
 else

  return level == 0 ? 63 : 255;
}
