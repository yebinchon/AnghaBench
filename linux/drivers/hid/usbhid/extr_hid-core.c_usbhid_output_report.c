
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhid_device {TYPE_1__* urbout; } ;
struct usb_device {int dummy; } ;
struct hid_device {struct usbhid_device* driver_data; } ;
typedef int __u8 ;
struct TYPE_2__ {int pipe; } ;


 int ENOSYS ;
 int USB_CTRL_SET_TIMEOUT ;
 struct usb_device* hid_to_usb_dev (struct hid_device*) ;
 int usb_interrupt_msg (struct usb_device*,int ,int*,size_t,int*,int ) ;

__attribute__((used)) static int usbhid_output_report(struct hid_device *hid, __u8 *buf, size_t count)
{
 struct usbhid_device *usbhid = hid->driver_data;
 struct usb_device *dev = hid_to_usb_dev(hid);
 int actual_length, skipped_report_id = 0, ret;

 if (!usbhid->urbout)
  return -ENOSYS;

 if (buf[0] == 0x0) {

  buf++;
  count--;
  skipped_report_id = 1;
 }

 ret = usb_interrupt_msg(dev, usbhid->urbout->pipe,
    buf, count, &actual_length,
    USB_CTRL_SET_TIMEOUT);

 if (ret == 0) {
  ret = actual_length;

  if (skipped_report_id)
   ret++;
 }

 return ret;
}
