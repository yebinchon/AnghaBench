
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int u32 ;
struct intel_rotation_info {TYPE_5__* plane; } ;
struct intel_framebuffer {TYPE_1__* rotated; TYPE_4__* normal; struct intel_rotation_info rot_info; } ;
struct drm_rect {int x1; int y1; int x2; int y2; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_7__ {int size; } ;
struct drm_i915_gem_object {TYPE_2__ base; } ;
struct drm_framebuffer {int* offsets; int* pitches; int modifier; TYPE_3__* format; int height; int width; } ;
struct TYPE_10__ {unsigned int offset; unsigned int stride; unsigned int width; unsigned int height; } ;
struct TYPE_9__ {int x; int y; } ;
struct TYPE_8__ {int num_planes; unsigned int* cpp; int hsub; int vsub; } ;
struct TYPE_6__ {unsigned int pitch; int x; int y; } ;


 void* DIV_ROUND_UP (int,unsigned int) ;
 int DRM_DEBUG_KMS (char*,int,int,...) ;
 int DRM_MODE_ROTATE_0 ;
 int DRM_MODE_ROTATE_270 ;
 int EINVAL ;
 unsigned int drm_framebuffer_plane_height (int ,struct drm_framebuffer*,int) ;
 unsigned int drm_framebuffer_plane_width (int ,struct drm_framebuffer*,int) ;
 int drm_rect_rotate (struct drm_rect*,unsigned int,unsigned int,int ) ;
 scalar_t__ i915_gem_object_is_tiled (struct drm_i915_gem_object*) ;
 int intel_adjust_tile_offset (int*,int*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int ) ;
 unsigned int intel_compute_aligned_offset (struct drm_i915_private*,int*,int*,struct drm_framebuffer*,int,int,int ,unsigned int) ;
 struct drm_i915_gem_object* intel_fb_obj (struct drm_framebuffer*) ;
 int intel_fb_offset_to_xy (int*,int*,struct drm_framebuffer*,int) ;
 int intel_tile_dims (struct drm_framebuffer*,int,...) ;
 unsigned int intel_tile_size (struct drm_i915_private*) ;
 scalar_t__ is_ccs_modifier (int ) ;
 int is_surface_linear (int ,int) ;
 unsigned int max (unsigned int,unsigned int) ;
 int mul_u32_u32 (unsigned int,unsigned int) ;
 int swap (unsigned int,unsigned int) ;
 struct intel_framebuffer* to_intel_framebuffer (struct drm_framebuffer*) ;

__attribute__((used)) static int
intel_fill_fb_info(struct drm_i915_private *dev_priv,
     struct drm_framebuffer *fb)
{
 struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
 struct intel_rotation_info *rot_info = &intel_fb->rot_info;
 struct drm_i915_gem_object *obj = intel_fb_obj(fb);
 u32 gtt_offset_rotated = 0;
 unsigned int max_size = 0;
 int i, num_planes = fb->format->num_planes;
 unsigned int tile_size = intel_tile_size(dev_priv);

 for (i = 0; i < num_planes; i++) {
  unsigned int width, height;
  unsigned int cpp, size;
  u32 offset;
  int x, y;
  int ret;

  cpp = fb->format->cpp[i];
  width = drm_framebuffer_plane_width(fb->width, fb, i);
  height = drm_framebuffer_plane_height(fb->height, fb, i);

  ret = intel_fb_offset_to_xy(&x, &y, fb, i);
  if (ret) {
   DRM_DEBUG_KMS("bad fb plane %d offset: 0x%x\n",
          i, fb->offsets[i]);
   return ret;
  }

  if (is_ccs_modifier(fb->modifier) && i == 1) {
   int hsub = fb->format->hsub;
   int vsub = fb->format->vsub;
   int tile_width, tile_height;
   int main_x, main_y;
   int ccs_x, ccs_y;

   intel_tile_dims(fb, i, &tile_width, &tile_height);
   tile_width *= hsub;
   tile_height *= vsub;

   ccs_x = (x * hsub) % tile_width;
   ccs_y = (y * vsub) % tile_height;
   main_x = intel_fb->normal[0].x % tile_width;
   main_y = intel_fb->normal[0].y % tile_height;





   if (main_x != ccs_x || main_y != ccs_y) {
    DRM_DEBUG_KMS("Bad CCS x/y (main %d,%d ccs %d,%d) full (main %d,%d ccs %d,%d)\n",
           main_x, main_y,
           ccs_x, ccs_y,
           intel_fb->normal[0].x,
           intel_fb->normal[0].y,
           x, y);
    return -EINVAL;
   }
  }
  if (i == 0 && i915_gem_object_is_tiled(obj) &&
      (x + width) * cpp > fb->pitches[i]) {
   DRM_DEBUG_KMS("bad fb plane %d offset: 0x%x\n",
          i, fb->offsets[i]);
   return -EINVAL;
  }





  intel_fb->normal[i].x = x;
  intel_fb->normal[i].y = y;

  offset = intel_compute_aligned_offset(dev_priv, &x, &y, fb, i,
            fb->pitches[i],
            DRM_MODE_ROTATE_0,
            tile_size);
  offset /= tile_size;

  if (!is_surface_linear(fb->modifier, i)) {
   unsigned int tile_width, tile_height;
   unsigned int pitch_tiles;
   struct drm_rect r;

   intel_tile_dims(fb, i, &tile_width, &tile_height);

   rot_info->plane[i].offset = offset;
   rot_info->plane[i].stride = DIV_ROUND_UP(fb->pitches[i], tile_width * cpp);
   rot_info->plane[i].width = DIV_ROUND_UP(x + width, tile_width);
   rot_info->plane[i].height = DIV_ROUND_UP(y + height, tile_height);

   intel_fb->rotated[i].pitch =
    rot_info->plane[i].height * tile_height;


   size = rot_info->plane[i].stride * rot_info->plane[i].height;




   if (x != 0)
    size++;


   r.x1 = x;
   r.y1 = y;
   r.x2 = x + width;
   r.y2 = y + height;
   drm_rect_rotate(&r,
     rot_info->plane[i].width * tile_width,
     rot_info->plane[i].height * tile_height,
     DRM_MODE_ROTATE_270);
   x = r.x1;
   y = r.y1;


   pitch_tiles = intel_fb->rotated[i].pitch / tile_height;
   swap(tile_width, tile_height);





   intel_adjust_tile_offset(&x, &y,
       tile_width, tile_height,
       tile_size, pitch_tiles,
       gtt_offset_rotated * tile_size, 0);

   gtt_offset_rotated += rot_info->plane[i].width * rot_info->plane[i].height;





   intel_fb->rotated[i].x = x;
   intel_fb->rotated[i].y = y;
  } else {
   size = DIV_ROUND_UP((y + height) * fb->pitches[i] +
         x * cpp, tile_size);
  }


  max_size = max(max_size, offset + size);
 }

 if (mul_u32_u32(max_size, tile_size) > obj->base.size) {
  DRM_DEBUG_KMS("fb too big for bo (need %llu bytes, have %zu bytes)\n",
         mul_u32_u32(max_size, tile_size), obj->base.size);
  return -EINVAL;
 }

 return 0;
}
