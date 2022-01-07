
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {scalar_t__ modifier; int* offsets; int * pitches; int height; int dev; } ;


 unsigned int ALIGN (unsigned int,int ) ;
 int DRM_DEBUG_KMS (char*,int,int,...) ;
 scalar_t__ DRM_FORMAT_MOD_LINEAR ;
 int DRM_MODE_ROTATE_0 ;
 int EINVAL ;
 int ERANGE ;
 scalar_t__ add_overflows_t (int ,int ,int) ;
 unsigned int drm_framebuffer_plane_height (int ,struct drm_framebuffer const*,int) ;
 int intel_adjust_aligned_offset (int*,int*,struct drm_framebuffer const*,int,int ,int ,int,int ) ;
 int intel_tile_height (struct drm_framebuffer const*,int) ;
 int intel_tile_size (struct drm_i915_private*) ;
 int mul_u32_u32 (unsigned int,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 int u32 ;

__attribute__((used)) static int intel_fb_offset_to_xy(int *x, int *y,
     const struct drm_framebuffer *fb,
     int color_plane)
{
 struct drm_i915_private *dev_priv = to_i915(fb->dev);
 unsigned int height;

 if (fb->modifier != DRM_FORMAT_MOD_LINEAR &&
     fb->offsets[color_plane] % intel_tile_size(dev_priv)) {
  DRM_DEBUG_KMS("Misaligned offset 0x%08x for color plane %d\n",
         fb->offsets[color_plane], color_plane);
  return -EINVAL;
 }

 height = drm_framebuffer_plane_height(fb->height, fb, color_plane);
 height = ALIGN(height, intel_tile_height(fb, color_plane));


 if (add_overflows_t(u32, mul_u32_u32(height, fb->pitches[color_plane]),
       fb->offsets[color_plane])) {
  DRM_DEBUG_KMS("Bad offset 0x%08x or pitch %d for color plane %d\n",
         fb->offsets[color_plane], fb->pitches[color_plane],
         color_plane);
  return -ERANGE;
 }

 *x = 0;
 *y = 0;

 intel_adjust_aligned_offset(x, y,
        fb, color_plane, DRM_MODE_ROTATE_0,
        fb->pitches[color_plane],
        fb->offsets[color_plane], 0);

 return 0;
}
