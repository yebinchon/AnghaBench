
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_drm_front_drm_info {int front_info; } ;
struct drm_framebuffer {TYPE_1__* dev; } ;
struct TYPE_2__ {struct xen_drm_front_drm_info* dev_private; } ;


 scalar_t__ drm_dev_enter (TYPE_1__*,int*) ;
 int drm_dev_exit (int) ;
 int drm_gem_fb_destroy (struct drm_framebuffer*) ;
 int xen_drm_front_fb_detach (int ,int ) ;
 int xen_drm_front_fb_to_cookie (struct drm_framebuffer*) ;

__attribute__((used)) static void fb_destroy(struct drm_framebuffer *fb)
{
 struct xen_drm_front_drm_info *drm_info = fb->dev->dev_private;
 int idx;

 if (drm_dev_enter(fb->dev, &idx)) {
  xen_drm_front_fb_detach(drm_info->front_info,
     xen_drm_front_fb_to_cookie(fb));
  drm_dev_exit(idx);
 }
 drm_gem_fb_destroy(fb);
}
