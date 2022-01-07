
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* obj; } ;
struct psb_framebuffer {TYPE_1__ base; } ;
struct psb_fbdev {int psb_fb_helper; struct psb_framebuffer pfb; } ;
struct drm_device {int dummy; } ;


 int drm_fb_helper_fini (int *) ;
 int drm_fb_helper_unregister_fbi (int *) ;
 int drm_framebuffer_cleanup (TYPE_1__*) ;
 int drm_framebuffer_unregister_private (TYPE_1__*) ;
 int drm_gem_object_put_unlocked (scalar_t__) ;

__attribute__((used)) static int psb_fbdev_destroy(struct drm_device *dev, struct psb_fbdev *fbdev)
{
 struct psb_framebuffer *psbfb = &fbdev->pfb;

 drm_fb_helper_unregister_fbi(&fbdev->psb_fb_helper);

 drm_fb_helper_fini(&fbdev->psb_fb_helper);
 drm_framebuffer_unregister_private(&psbfb->base);
 drm_framebuffer_cleanup(&psbfb->base);

 if (psbfb->base.obj[0])
  drm_gem_object_put_unlocked(psbfb->base.obj[0]);
 return 0;
}
