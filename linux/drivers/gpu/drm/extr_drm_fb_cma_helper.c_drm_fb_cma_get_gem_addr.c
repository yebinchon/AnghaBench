
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct drm_plane_state {int src_x; int src_y; } ;
struct drm_gem_cma_object {scalar_t__ paddr; } ;
struct drm_framebuffer {int* pitches; TYPE_1__* format; scalar_t__* offsets; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_3__ {int* char_per_block; int hsub; int vsub; } ;


 struct drm_gem_cma_object* drm_fb_cma_get_gem_obj (struct drm_framebuffer*,unsigned int) ;
 int drm_format_info_block_height (TYPE_1__*,unsigned int) ;
 int drm_format_info_block_width (TYPE_1__*,unsigned int) ;

dma_addr_t drm_fb_cma_get_gem_addr(struct drm_framebuffer *fb,
       struct drm_plane_state *state,
       unsigned int plane)
{
 struct drm_gem_cma_object *obj;
 dma_addr_t paddr;
 u8 h_div = 1, v_div = 1;
 u32 block_w = drm_format_info_block_width(fb->format, plane);
 u32 block_h = drm_format_info_block_height(fb->format, plane);
 u32 block_size = fb->format->char_per_block[plane];
 u32 sample_x;
 u32 sample_y;
 u32 block_start_y;
 u32 num_hblocks;

 obj = drm_fb_cma_get_gem_obj(fb, plane);
 if (!obj)
  return 0;

 paddr = obj->paddr + fb->offsets[plane];

 if (plane > 0) {
  h_div = fb->format->hsub;
  v_div = fb->format->vsub;
 }

 sample_x = (state->src_x >> 16) / h_div;
 sample_y = (state->src_y >> 16) / v_div;
 block_start_y = (sample_y / block_h) * block_h;
 num_hblocks = sample_x / block_w;

 paddr += fb->pitches[plane] * block_start_y;
 paddr += block_size * num_hblocks;

 return paddr;
}
