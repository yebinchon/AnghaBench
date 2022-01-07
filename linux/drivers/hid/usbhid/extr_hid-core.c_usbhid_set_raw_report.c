
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhid_device {struct usb_interface* intf; } ;
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_2__ {int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct usb_device {int dummy; } ;
struct hid_device {int quirks; struct usbhid_device* driver_data; } ;
typedef int __u8 ;


 unsigned char HID_OUTPUT_REPORT ;
 int HID_QUIRK_SKIP_OUTPUT_REPORT_ID ;
 int HID_REQ_SET_REPORT ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 struct usb_device* hid_to_usb_dev (struct hid_device*) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,unsigned char,int ,int*,size_t,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int usbhid_set_raw_report(struct hid_device *hid, unsigned int reportnum,
     __u8 *buf, size_t count, unsigned char rtype)
{
 struct usbhid_device *usbhid = hid->driver_data;
 struct usb_device *dev = hid_to_usb_dev(hid);
 struct usb_interface *intf = usbhid->intf;
 struct usb_host_interface *interface = intf->cur_altsetting;
 int ret, skipped_report_id = 0;


 if ((rtype == HID_OUTPUT_REPORT) &&
     (hid->quirks & HID_QUIRK_SKIP_OUTPUT_REPORT_ID))
  buf[0] = 0;
 else
  buf[0] = reportnum;

 if (buf[0] == 0x0) {

  buf++;
  count--;
  skipped_report_id = 1;
 }

 ret = usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
   HID_REQ_SET_REPORT,
   USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
   ((rtype + 1) << 8) | reportnum,
   interface->desc.bInterfaceNumber, buf, count,
   USB_CTRL_SET_TIMEOUT);

 if (ret > 0 && skipped_report_id)
  ret++;

 return ret;
}
