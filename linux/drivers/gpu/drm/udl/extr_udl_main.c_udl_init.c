
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;
struct drm_device {int dummy; } ;
struct udl_device {TYPE_1__ urbs; int udev; int gem_lock; struct drm_device drm; } ;


 int DRM_DEBUG (char*) ;
 int DRM_ERROR (char*,...) ;
 int ENODEV ;
 int ENOMEM ;
 int MAX_TRANSFER ;
 int WRITES_IN_FLIGHT ;
 int drm_kms_helper_poll_init (struct drm_device*) ;
 int mutex_init (int *) ;
 int udl_alloc_urb_list (struct drm_device*,int ,int ) ;
 int udl_fbdev_init (struct drm_device*) ;
 int udl_free_urb_list (struct drm_device*) ;
 int udl_modeset_init (struct drm_device*) ;
 int udl_parse_vendor_descriptor (struct drm_device*,int ) ;
 scalar_t__ udl_select_std_channel (struct udl_device*) ;

int udl_init(struct udl_device *udl)
{
 struct drm_device *dev = &udl->drm;
 int ret = -ENOMEM;

 DRM_DEBUG("\n");

 mutex_init(&udl->gem_lock);

 if (!udl_parse_vendor_descriptor(dev, udl->udev)) {
  ret = -ENODEV;
  DRM_ERROR("firmware not recognized. Assume incompatible device\n");
  goto err;
 }

 if (udl_select_std_channel(udl))
  DRM_ERROR("Selecting channel failed\n");

 if (!udl_alloc_urb_list(dev, WRITES_IN_FLIGHT, MAX_TRANSFER)) {
  DRM_ERROR("udl_alloc_urb_list failed\n");
  goto err;
 }

 DRM_DEBUG("\n");
 ret = udl_modeset_init(dev);
 if (ret)
  goto err;

 ret = udl_fbdev_init(dev);
 if (ret)
  goto err;

 drm_kms_helper_poll_init(dev);

 return 0;

err:
 if (udl->urbs.count)
  udl_free_urb_list(dev);
 DRM_ERROR("%d\n", ret);
 return ret;
}
