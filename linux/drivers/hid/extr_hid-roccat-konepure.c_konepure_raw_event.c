
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct usb_interface {TYPE_3__* cur_altsetting; } ;
struct roccat_common2_device {int chrdev_minor; scalar_t__ roccat_claimed; } ;
struct hid_report {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct hid_device {TYPE_1__ dev; } ;
struct TYPE_5__ {scalar_t__ bInterfaceProtocol; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;


 scalar_t__ KONEPURE_MOUSE_REPORT_NUMBER_BUTTON ;
 scalar_t__ USB_INTERFACE_PROTOCOL_MOUSE ;
 struct roccat_common2_device* hid_get_drvdata (struct hid_device*) ;
 int roccat_report_event (int ,scalar_t__*) ;
 struct usb_interface* to_usb_interface (int ) ;

__attribute__((used)) static int konepure_raw_event(struct hid_device *hdev,
  struct hid_report *report, u8 *data, int size)
{
 struct usb_interface *intf = to_usb_interface(hdev->dev.parent);
 struct roccat_common2_device *konepure = hid_get_drvdata(hdev);

 if (intf->cur_altsetting->desc.bInterfaceProtocol
   != USB_INTERFACE_PROTOCOL_MOUSE)
  return 0;

 if (data[0] != KONEPURE_MOUSE_REPORT_NUMBER_BUTTON)
  return 0;

 if (konepure != ((void*)0) && konepure->roccat_claimed)
  roccat_report_event(konepure->chrdev_minor, data);

 return 0;
}
