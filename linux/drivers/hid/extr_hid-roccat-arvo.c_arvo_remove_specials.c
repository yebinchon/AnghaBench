
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {TYPE_3__* cur_altsetting; } ;
struct TYPE_4__ {int parent; } ;
struct hid_device {TYPE_1__ dev; } ;
struct arvo_device {int chrdev_minor; scalar_t__ roccat_claimed; } ;
struct TYPE_5__ {scalar_t__ bInterfaceProtocol; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;


 scalar_t__ USB_INTERFACE_PROTOCOL_KEYBOARD ;
 struct arvo_device* hid_get_drvdata (struct hid_device*) ;
 int kfree (struct arvo_device*) ;
 int roccat_disconnect (int ) ;
 struct usb_interface* to_usb_interface (int ) ;

__attribute__((used)) static void arvo_remove_specials(struct hid_device *hdev)
{
 struct usb_interface *intf = to_usb_interface(hdev->dev.parent);
 struct arvo_device *arvo;

 if (intf->cur_altsetting->desc.bInterfaceProtocol
   == USB_INTERFACE_PROTOCOL_KEYBOARD)
  return;

 arvo = hid_get_drvdata(hdev);
 if (arvo->roccat_claimed)
  roccat_disconnect(arvo->chrdev_minor);
 kfree(arvo);
}
