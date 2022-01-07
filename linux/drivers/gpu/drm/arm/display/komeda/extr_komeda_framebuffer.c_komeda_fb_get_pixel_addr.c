
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_framebuffer {int* offsets; int* pitches; TYPE_1__* format; int modifier; } ;
struct komeda_fb {struct drm_framebuffer base; } ;
struct drm_gem_cma_object {int paddr; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int num_planes; int* char_per_block; int hsub; int vsub; } ;


 int DRM_DEBUG_KMS (char*) ;
 int EINVAL ;
 struct drm_gem_cma_object* drm_fb_cma_get_gem_obj (struct drm_framebuffer*,int) ;
 int drm_format_info_block_width (TYPE_1__*,int) ;

dma_addr_t
komeda_fb_get_pixel_addr(struct komeda_fb *kfb, int x, int y, int plane)
{
 struct drm_framebuffer *fb = &kfb->base;
 const struct drm_gem_cma_object *obj;
 u32 offset, plane_x, plane_y, block_w, block_sz;

 if (plane >= fb->format->num_planes) {
  DRM_DEBUG_KMS("Out of max plane num.\n");
  return -EINVAL;
 }

 obj = drm_fb_cma_get_gem_obj(fb, plane);

 offset = fb->offsets[plane];
 if (!fb->modifier) {
  block_w = drm_format_info_block_width(fb->format, plane);
  block_sz = fb->format->char_per_block[plane];
  plane_x = x / (plane ? fb->format->hsub : 1);
  plane_y = y / (plane ? fb->format->vsub : 1);

  offset += (plane_x / block_w) * block_sz
   + plane_y * fb->pitches[plane];
 }

 return obj->paddr + offset;
}
