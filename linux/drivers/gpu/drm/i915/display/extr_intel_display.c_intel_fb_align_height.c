
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int dummy; } ;


 unsigned int ALIGN (unsigned int,unsigned int) ;
 unsigned int intel_tile_height (struct drm_framebuffer const*,int) ;

unsigned int
intel_fb_align_height(const struct drm_framebuffer *fb,
        int color_plane, unsigned int height)
{
 unsigned int tile_height = intel_tile_height(fb, color_plane);

 return ALIGN(height, tile_height);
}
