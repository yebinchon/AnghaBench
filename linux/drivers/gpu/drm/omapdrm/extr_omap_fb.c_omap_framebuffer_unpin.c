
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct plane {scalar_t__ dma_addr; } ;
struct omap_framebuffer {scalar_t__ pin_count; int lock; struct plane* planes; } ;
struct drm_framebuffer {int * obj; TYPE_1__* format; } ;
struct TYPE_2__ {int num_planes; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap_gem_unpin (int ) ;
 struct omap_framebuffer* to_omap_framebuffer (struct drm_framebuffer*) ;

void omap_framebuffer_unpin(struct drm_framebuffer *fb)
{
 struct omap_framebuffer *omap_fb = to_omap_framebuffer(fb);
 int i, n = fb->format->num_planes;

 mutex_lock(&omap_fb->lock);

 omap_fb->pin_count--;

 if (omap_fb->pin_count > 0) {
  mutex_unlock(&omap_fb->lock);
  return;
 }

 for (i = 0; i < n; i++) {
  struct plane *plane = &omap_fb->planes[i];
  omap_gem_unpin(fb->obj[i]);
  plane->dma_addr = 0;
 }

 mutex_unlock(&omap_fb->lock);
}
