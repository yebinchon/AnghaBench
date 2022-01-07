
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct usb_interface {TYPE_2__ dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_3__ {scalar_t__ bInterfaceClass; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct ims_pcu {scalar_t__ bootloader_mode; } ;


 scalar_t__ USB_CLASS_COMM ;
 int ims_pcu_attr_group ;
 int ims_pcu_buffers_free (struct ims_pcu*) ;
 int ims_pcu_destroy_application_mode (struct ims_pcu*) ;
 int ims_pcu_destroy_bootloader_mode (struct ims_pcu*) ;
 int ims_pcu_stop_io (struct ims_pcu*) ;
 int kfree (struct ims_pcu*) ;
 int sysfs_remove_group (int *,int *) ;
 struct ims_pcu* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void ims_pcu_disconnect(struct usb_interface *intf)
{
 struct ims_pcu *pcu = usb_get_intfdata(intf);
 struct usb_host_interface *alt = intf->cur_altsetting;

 usb_set_intfdata(intf, ((void*)0));





 if (alt->desc.bInterfaceClass != USB_CLASS_COMM)
  return;

 sysfs_remove_group(&intf->dev.kobj, &ims_pcu_attr_group);

 ims_pcu_stop_io(pcu);

 if (pcu->bootloader_mode)
  ims_pcu_destroy_bootloader_mode(pcu);
 else
  ims_pcu_destroy_application_mode(pcu);

 ims_pcu_buffers_free(pcu);
 kfree(pcu);
}
