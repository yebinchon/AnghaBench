
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct usb_device {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_REQ_SET_REPORT ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int kfree (char*) ;
 char* kmemdup (void const*,int,int ) ;
 int roccat_common2_feature_report (int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,char*,int,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

int roccat_common2_send(struct usb_device *usb_dev, uint report_id,
  void const *data, uint size)
{
 char *buf;
 int len;

 buf = kmemdup(data, size, GFP_KERNEL);
 if (buf == ((void*)0))
  return -ENOMEM;

 len = usb_control_msg(usb_dev, usb_sndctrlpipe(usb_dev, 0),
   HID_REQ_SET_REPORT,
   USB_TYPE_CLASS | USB_RECIP_INTERFACE | USB_DIR_OUT,
   roccat_common2_feature_report(report_id),
   0, buf, size, USB_CTRL_SET_TIMEOUT);

 kfree(buf);
 return ((len < 0) ? len : ((len != size) ? -EIO : 0));
}
