
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {scalar_t__* pitches; int modifier; TYPE_1__* format; int dev; } ;
struct TYPE_2__ {int format; } ;


 int DRM_FORMAT_MOD_LINEAR ;
 scalar_t__ intel_plane_fb_max_stride (struct drm_i915_private*,int ,int ) ;
 scalar_t__ intel_tile_size (struct drm_i915_private*) ;
 scalar_t__ intel_tile_width_bytes (struct drm_framebuffer const*,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static u32
intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
{
 struct drm_i915_private *dev_priv = to_i915(fb->dev);

 if (fb->modifier == DRM_FORMAT_MOD_LINEAR) {
  u32 max_stride = intel_plane_fb_max_stride(dev_priv,
          fb->format->format,
          fb->modifier);





  if (fb->pitches[color_plane] > max_stride)
   return intel_tile_size(dev_priv);
  else
   return 64;
 } else {
  return intel_tile_width_bytes(fb, color_plane);
 }
}
