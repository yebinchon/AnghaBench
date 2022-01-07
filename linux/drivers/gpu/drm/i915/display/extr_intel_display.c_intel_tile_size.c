
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 scalar_t__ IS_GEN (struct drm_i915_private const*,int) ;

__attribute__((used)) static unsigned int intel_tile_size(const struct drm_i915_private *dev_priv)
{
 return IS_GEN(dev_priv, 2) ? 2048 : 4096;
}
