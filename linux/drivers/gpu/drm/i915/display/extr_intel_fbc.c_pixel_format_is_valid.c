
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;






 int IS_G4X (struct drm_i915_private*) ;
 int IS_GEN (struct drm_i915_private*,int) ;

__attribute__((used)) static bool pixel_format_is_valid(struct drm_i915_private *dev_priv,
      u32 pixel_format)
{
 switch (pixel_format) {
 case 128:
 case 130:
  return 1;
 case 129:
 case 131:

  if (IS_GEN(dev_priv, 2))
   return 0;

  if (IS_G4X(dev_priv))
   return 0;
  return 1;
 default:
  return 0;
 }
}
