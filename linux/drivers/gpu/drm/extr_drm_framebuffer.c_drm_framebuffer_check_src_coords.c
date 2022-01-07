
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct drm_framebuffer {int width; int height; } ;


 int DRM_DEBUG_KMS (char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int,int) ;
 int ENOSPC ;

int drm_framebuffer_check_src_coords(uint32_t src_x, uint32_t src_y,
         uint32_t src_w, uint32_t src_h,
         const struct drm_framebuffer *fb)
{
 unsigned int fb_width, fb_height;

 fb_width = fb->width << 16;
 fb_height = fb->height << 16;


 if (src_w > fb_width ||
     src_x > fb_width - src_w ||
     src_h > fb_height ||
     src_y > fb_height - src_h) {
  DRM_DEBUG_KMS("Invalid source coordinates "
         "%u.%06ux%u.%06u+%u.%06u+%u.%06u (fb %ux%u)\n",
         src_w >> 16, ((src_w & 0xffff) * 15625) >> 10,
         src_h >> 16, ((src_h & 0xffff) * 15625) >> 10,
         src_x >> 16, ((src_x & 0xffff) * 15625) >> 10,
         src_y >> 16, ((src_y & 0xffff) * 15625) >> 10,
         fb->width, fb->height);
  return -ENOSPC;
 }

 return 0;
}
