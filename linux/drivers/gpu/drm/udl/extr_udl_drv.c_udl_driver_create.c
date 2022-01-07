
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct usb_device {int dummy; } ;
struct TYPE_3__ {struct udl_device* dev_private; } ;
struct udl_device {TYPE_1__ drm; struct usb_device* udev; } ;


 int ENOMEM ;
 struct udl_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int driver ;
 int drm_dev_fini (TYPE_1__*) ;
 int drm_dev_init (TYPE_1__*,int *,int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct udl_device*) ;
 struct udl_device* kzalloc (int,int ) ;
 int udl_init (struct udl_device*) ;
 int usb_set_intfdata (struct usb_interface*,struct udl_device*) ;

__attribute__((used)) static struct udl_device *udl_driver_create(struct usb_interface *interface)
{
 struct usb_device *udev = interface_to_usbdev(interface);
 struct udl_device *udl;
 int r;

 udl = kzalloc(sizeof(*udl), GFP_KERNEL);
 if (!udl)
  return ERR_PTR(-ENOMEM);

 r = drm_dev_init(&udl->drm, &driver, &interface->dev);
 if (r) {
  kfree(udl);
  return ERR_PTR(r);
 }

 udl->udev = udev;
 udl->drm.dev_private = udl;

 r = udl_init(udl);
 if (r) {
  drm_dev_fini(&udl->drm);
  kfree(udl);
  return ERR_PTR(r);
 }

 usb_set_intfdata(interface, udl);
 return udl;
}
