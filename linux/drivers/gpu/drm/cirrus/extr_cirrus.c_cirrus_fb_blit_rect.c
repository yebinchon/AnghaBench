
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_rect {int dummy; } ;
struct drm_framebuffer {int * obj; TYPE_2__* format; TYPE_1__* dev; } ;
struct cirrus_device {int cpp; int pitch; int vram; } ;
struct TYPE_4__ {int* cpp; } ;
struct TYPE_3__ {struct cirrus_device* dev_private; } ;


 int ENOMEM ;
 int WARN_ON_ONCE (char*) ;
 int drm_fb_memcpy_dstclip (int ,void*,struct drm_framebuffer*,struct drm_rect*) ;
 int drm_fb_xrgb8888_to_rgb565_dstclip (int ,int ,void*,struct drm_framebuffer*,struct drm_rect*,int) ;
 int drm_fb_xrgb8888_to_rgb888_dstclip (int ,int ,void*,struct drm_framebuffer*,struct drm_rect*) ;
 void* drm_gem_shmem_vmap (int ) ;
 int drm_gem_shmem_vunmap (int ,void*) ;

__attribute__((used)) static int cirrus_fb_blit_rect(struct drm_framebuffer *fb,
          struct drm_rect *rect)
{
 struct cirrus_device *cirrus = fb->dev->dev_private;
 void *vmap;

 vmap = drm_gem_shmem_vmap(fb->obj[0]);
 if (!vmap)
  return -ENOMEM;

 if (cirrus->cpp == fb->format->cpp[0])
  drm_fb_memcpy_dstclip(cirrus->vram,
          vmap, fb, rect);

 else if (fb->format->cpp[0] == 4 && cirrus->cpp == 2)
  drm_fb_xrgb8888_to_rgb565_dstclip(cirrus->vram,
        cirrus->pitch,
        vmap, fb, rect, 0);

 else if (fb->format->cpp[0] == 4 && cirrus->cpp == 3)
  drm_fb_xrgb8888_to_rgb888_dstclip(cirrus->vram,
        cirrus->pitch,
        vmap, fb, rect);

 else
  WARN_ON_ONCE("cpp mismatch");

 drm_gem_shmem_vunmap(fb->obj[0], vmap);
 return 0;
}
