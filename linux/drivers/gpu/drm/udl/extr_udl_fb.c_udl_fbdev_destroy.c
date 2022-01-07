
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* obj; int base; } ;
struct udl_fbdev {TYPE_2__ ufb; int helper; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int base; } ;


 int drm_fb_helper_fini (int *) ;
 int drm_fb_helper_unregister_fbi (int *) ;
 int drm_framebuffer_cleanup (int *) ;
 int drm_framebuffer_unregister_private (int *) ;
 int drm_gem_object_put_unlocked (int *) ;

__attribute__((used)) static void udl_fbdev_destroy(struct drm_device *dev,
         struct udl_fbdev *ufbdev)
{
 drm_fb_helper_unregister_fbi(&ufbdev->helper);
 drm_fb_helper_fini(&ufbdev->helper);
 if (ufbdev->ufb.obj) {
  drm_framebuffer_unregister_private(&ufbdev->ufb.base);
  drm_framebuffer_cleanup(&ufbdev->ufb.base);
  drm_gem_object_put_unlocked(&ufbdev->ufb.obj->base);
 }
}
