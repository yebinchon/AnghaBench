
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udl_fbdev {int helper; } ;
struct udl_device {struct udl_fbdev* fbdev; } ;
struct drm_device {int dummy; } ;


 int drm_fb_helper_unlink_fbi (int *) ;
 struct udl_device* to_udl (struct drm_device*) ;

void udl_fbdev_unplug(struct drm_device *dev)
{
 struct udl_device *udl = to_udl(dev);
 struct udl_fbdev *ufbdev;
 if (!udl->fbdev)
  return;

 ufbdev = udl->fbdev;
 drm_fb_helper_unlink_fbi(&ufbdev->helper);
}
