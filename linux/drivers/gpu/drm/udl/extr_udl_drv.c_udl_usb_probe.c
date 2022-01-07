
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_5__ {TYPE_1__* primary; } ;
struct udl_device {TYPE_2__ drm; } ;
struct TYPE_4__ {int index; } ;


 int DRM_INFO (char*,int ) ;
 scalar_t__ IS_ERR (struct udl_device*) ;
 int PTR_ERR (struct udl_device*) ;
 int drm_dev_put (TYPE_2__*) ;
 int drm_dev_register (TYPE_2__*,int ) ;
 struct udl_device* udl_driver_create (struct usb_interface*) ;

__attribute__((used)) static int udl_usb_probe(struct usb_interface *interface,
    const struct usb_device_id *id)
{
 int r;
 struct udl_device *udl;

 udl = udl_driver_create(interface);
 if (IS_ERR(udl))
  return PTR_ERR(udl);

 r = drm_dev_register(&udl->drm, 0);
 if (r)
  goto err_free;

 DRM_INFO("Initialized udl on minor %d\n", udl->drm.primary->index);

 return 0;

err_free:
 drm_dev_put(&udl->drm);
 return r;
}
