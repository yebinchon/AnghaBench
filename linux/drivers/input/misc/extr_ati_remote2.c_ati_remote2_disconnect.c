
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {scalar_t__ bInterfaceNumber; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct ati_remote2 {int * intf; TYPE_2__* udev; int idev; } ;
struct TYPE_6__ {int kobj; } ;
struct TYPE_5__ {TYPE_3__ dev; } ;


 int ati_remote2_attr_group ;
 int ati_remote2_driver ;
 int ati_remote2_urb_cleanup (struct ati_remote2*) ;
 int input_unregister_device (int ) ;
 int kfree (struct ati_remote2*) ;
 int sysfs_remove_group (int *,int *) ;
 int usb_driver_release_interface (int *,int ) ;
 struct ati_remote2* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void ati_remote2_disconnect(struct usb_interface *interface)
{
 struct ati_remote2 *ar2;
 struct usb_host_interface *alt = interface->cur_altsetting;

 if (alt->desc.bInterfaceNumber)
  return;

 ar2 = usb_get_intfdata(interface);
 usb_set_intfdata(interface, ((void*)0));

 input_unregister_device(ar2->idev);

 sysfs_remove_group(&ar2->udev->dev.kobj, &ati_remote2_attr_group);

 ati_remote2_urb_cleanup(ar2);

 usb_driver_release_interface(&ati_remote2_driver, ar2->intf[1]);

 kfree(ar2);
}
