
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int EINVAL ;
 int K90_REQUEST_PROFILE ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dev_warn (struct device*,char*,int) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 scalar_t__ kstrtoint (char const*,int,int*) ;
 struct usb_interface* to_usb_interface (int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static ssize_t k90_store_current_profile(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 int ret;
 struct usb_interface *usbif = to_usb_interface(dev->parent);
 struct usb_device *usbdev = interface_to_usbdev(usbif);
 int profile;

 if (kstrtoint(buf, 10, &profile))
  return -EINVAL;
 if (profile < 1 || profile > 3)
  return -EINVAL;

 ret = usb_control_msg(usbdev, usb_sndctrlpipe(usbdev, 0),
         K90_REQUEST_PROFILE,
         USB_DIR_OUT | USB_TYPE_VENDOR |
         USB_RECIP_DEVICE, profile, 0, ((void*)0), 0,
         USB_CTRL_SET_TIMEOUT);
 if (ret != 0) {
  dev_warn(dev, "Failed to change current profile (error %d).\n",
    ret);
  return ret;
 }

 return count;
}
