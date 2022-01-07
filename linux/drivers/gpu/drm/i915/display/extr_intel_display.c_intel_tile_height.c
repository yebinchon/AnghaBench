
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int dev; } ;


 unsigned int intel_tile_size (int ) ;
 unsigned int intel_tile_width_bytes (struct drm_framebuffer const*,int) ;
 int to_i915 (int ) ;

__attribute__((used)) static unsigned int
intel_tile_height(const struct drm_framebuffer *fb, int color_plane)
{
 return intel_tile_size(to_i915(fb->dev)) /
  intel_tile_width_bytes(fb, color_plane);
}
