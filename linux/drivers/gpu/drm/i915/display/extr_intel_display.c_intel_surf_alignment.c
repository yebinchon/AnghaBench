
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {int modifier; int dev; } ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int MISSING_CASE (int) ;
 unsigned int intel_linear_alignment (struct drm_i915_private*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
      int color_plane)
{
 struct drm_i915_private *dev_priv = to_i915(fb->dev);


 if (color_plane == 1)
  return 4096;

 switch (fb->modifier) {
 case 133:
  return intel_linear_alignment(dev_priv);
 case 132:
  if (INTEL_GEN(dev_priv) >= 9)
   return 256 * 1024;
  return 0;
 case 130:
 case 128:
 case 131:
 case 129:
  return 1 * 1024 * 1024;
 default:
  MISSING_CASE(fb->modifier);
  return 0;
 }
}
