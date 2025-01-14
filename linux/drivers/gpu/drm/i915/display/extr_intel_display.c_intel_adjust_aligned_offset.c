
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {int modifier; TYPE_1__* format; int dev; } ;
struct TYPE_2__ {unsigned int* cpp; } ;


 int WARN_ON (int) ;
 scalar_t__ drm_rotation_90_or_270 (unsigned int) ;
 int intel_adjust_tile_offset (int*,int*,unsigned int,unsigned int,unsigned int,unsigned int,scalar_t__,scalar_t__) ;
 int intel_tile_dims (struct drm_framebuffer const*,int,unsigned int*,unsigned int*) ;
 unsigned int intel_tile_size (struct drm_i915_private*) ;
 int is_surface_linear (int ,int) ;
 int swap (unsigned int,unsigned int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static u32 intel_adjust_aligned_offset(int *x, int *y,
           const struct drm_framebuffer *fb,
           int color_plane,
           unsigned int rotation,
           unsigned int pitch,
           u32 old_offset, u32 new_offset)
{
 struct drm_i915_private *dev_priv = to_i915(fb->dev);
 unsigned int cpp = fb->format->cpp[color_plane];

 WARN_ON(new_offset > old_offset);

 if (!is_surface_linear(fb->modifier, color_plane)) {
  unsigned int tile_size, tile_width, tile_height;
  unsigned int pitch_tiles;

  tile_size = intel_tile_size(dev_priv);
  intel_tile_dims(fb, color_plane, &tile_width, &tile_height);

  if (drm_rotation_90_or_270(rotation)) {
   pitch_tiles = pitch / tile_height;
   swap(tile_width, tile_height);
  } else {
   pitch_tiles = pitch / (tile_width * cpp);
  }

  intel_adjust_tile_offset(x, y, tile_width, tile_height,
      tile_size, pitch_tiles,
      old_offset, new_offset);
 } else {
  old_offset += *y * pitch + *x * cpp;

  *y = (old_offset - new_offset) / pitch;
  *x = ((old_offset - new_offset) - *y * pitch) / cpp;
 }

 return new_offset;
}
