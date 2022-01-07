
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_2__ desc; } ;
struct usb_device {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct hid_device {TYPE_1__ dev; } ;


 int EINVAL ;
 int HID_REQ_SET_IDLE ;
 int hid_set_idle (struct usb_device*,int,int,int) ;
 struct usb_device* hid_to_usb_dev (struct hid_device*) ;
 struct usb_interface* to_usb_interface (int ) ;

__attribute__((used)) static int usbhid_idle(struct hid_device *hid, int report, int idle,
  int reqtype)
{
 struct usb_device *dev = hid_to_usb_dev(hid);
 struct usb_interface *intf = to_usb_interface(hid->dev.parent);
 struct usb_host_interface *interface = intf->cur_altsetting;
 int ifnum = interface->desc.bInterfaceNumber;

 if (reqtype != HID_REQ_SET_IDLE)
  return -EINVAL;

 return hid_set_idle(dev, ifnum, report, idle);
}
