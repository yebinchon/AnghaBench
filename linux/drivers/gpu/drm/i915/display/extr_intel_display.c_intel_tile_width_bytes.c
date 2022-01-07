
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {int modifier; TYPE_1__* format; int dev; } ;
struct TYPE_2__ {unsigned int* cpp; } ;



 int HAS_128_BYTE_Y_TILING (struct drm_i915_private*) ;





 int IS_GEN (struct drm_i915_private*,int) ;
 int MISSING_CASE (unsigned int) ;
 unsigned int intel_tile_size (struct drm_i915_private*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static unsigned int
intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
{
 struct drm_i915_private *dev_priv = to_i915(fb->dev);
 unsigned int cpp = fb->format->cpp[color_plane];

 switch (fb->modifier) {
 case 133:
  return intel_tile_size(dev_priv);
 case 132:
  if (IS_GEN(dev_priv, 2))
   return 128;
  else
   return 512;
 case 130:
  if (color_plane == 1)
   return 128;

 case 131:
  if (IS_GEN(dev_priv, 2) || HAS_128_BYTE_Y_TILING(dev_priv))
   return 128;
  else
   return 512;
 case 128:
  if (color_plane == 1)
   return 128;

 case 129:
  switch (cpp) {
  case 1:
   return 64;
  case 2:
  case 4:
   return 128;
  case 8:
  case 16:
   return 256;
  default:
   MISSING_CASE(cpp);
   return cpp;
  }
  break;
 default:
  MISSING_CASE(fb->modifier);
  return cpp;
 }
}
