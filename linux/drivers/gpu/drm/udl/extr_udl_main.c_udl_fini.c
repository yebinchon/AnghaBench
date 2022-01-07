
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;
struct udl_device {TYPE_1__ urbs; } ;
struct drm_device {int dummy; } ;


 int drm_kms_helper_poll_fini (struct drm_device*) ;
 struct udl_device* to_udl (struct drm_device*) ;
 int udl_fbdev_cleanup (struct drm_device*) ;
 int udl_free_urb_list (struct drm_device*) ;

void udl_fini(struct drm_device *dev)
{
 struct udl_device *udl = to_udl(dev);

 drm_kms_helper_poll_fini(dev);

 if (udl->urbs.count)
  udl_free_urb_list(dev);

 udl_fbdev_cleanup(dev);
}
