
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int udl_free_urb_list (struct drm_device*) ;

int udl_drop_usb(struct drm_device *dev)
{
 udl_free_urb_list(dev);
 return 0;
}
