
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;
typedef int __u16 ;


 int EINVAL ;
 int K90_MACRO_MODE_HW ;
 int K90_MACRO_MODE_SW ;
 int K90_REQUEST_MACRO_MODE ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dev_warn (struct device*,char*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 struct usb_interface* to_usb_interface (int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static ssize_t k90_store_macro_mode(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 int ret;
 struct usb_interface *usbif = to_usb_interface(dev->parent);
 struct usb_device *usbdev = interface_to_usbdev(usbif);
 __u16 value;

 if (strncmp(buf, "SW", 2) == 0)
  value = K90_MACRO_MODE_SW;
 else if (strncmp(buf, "HW", 2) == 0)
  value = K90_MACRO_MODE_HW;
 else
  return -EINVAL;

 ret = usb_control_msg(usbdev, usb_sndctrlpipe(usbdev, 0),
         K90_REQUEST_MACRO_MODE,
         USB_DIR_OUT | USB_TYPE_VENDOR |
         USB_RECIP_DEVICE, value, 0, ((void*)0), 0,
         USB_CTRL_SET_TIMEOUT);
 if (ret != 0) {
  dev_warn(dev, "Failed to set macro mode.\n");
  return ret;
 }

 return count;
}
