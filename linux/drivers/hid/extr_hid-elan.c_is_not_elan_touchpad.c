
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {TYPE_3__* altsetting; } ;
struct TYPE_4__ {int parent; } ;
struct hid_device {scalar_t__ bus; TYPE_1__ dev; } ;
struct TYPE_5__ {scalar_t__ bInterfaceNumber; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;


 scalar_t__ BUS_USB ;
 scalar_t__ ELAN_TP_USB_INTF ;
 struct usb_interface* to_usb_interface (int ) ;

__attribute__((used)) static int is_not_elan_touchpad(struct hid_device *hdev)
{
 if (hdev->bus == BUS_USB) {
  struct usb_interface *intf = to_usb_interface(hdev->dev.parent);

  return (intf->altsetting->desc.bInterfaceNumber !=
   ELAN_TP_USB_INTF);
 }

 return 0;
}
