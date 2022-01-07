
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int base; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int drm_mode_object_unregister (struct drm_device*,int *) ;

void drm_framebuffer_unregister_private(struct drm_framebuffer *fb)
{
 struct drm_device *dev;

 if (!fb)
  return;

 dev = fb->dev;


 drm_mode_object_unregister(dev, &fb->base);
}
