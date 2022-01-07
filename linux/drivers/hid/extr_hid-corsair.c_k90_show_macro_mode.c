
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;


 int K90_REQUEST_GET_MODE ;
 int PAGE_SIZE ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dev_warn (struct device*,char*,char) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int snprintf (char*,int ,char*,char const*) ;
 struct usb_interface* to_usb_interface (int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,char*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static ssize_t k90_show_macro_mode(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 int ret;
 struct usb_interface *usbif = to_usb_interface(dev->parent);
 struct usb_device *usbdev = interface_to_usbdev(usbif);
 const char *macro_mode;
 char *data;

 data = kmalloc(2, GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 ret = usb_control_msg(usbdev, usb_rcvctrlpipe(usbdev, 0),
         K90_REQUEST_GET_MODE,
         USB_DIR_IN | USB_TYPE_VENDOR |
         USB_RECIP_DEVICE, 0, 0, data, 2,
         USB_CTRL_SET_TIMEOUT);
 if (ret < 1) {
  dev_warn(dev, "Failed to get K90 initial mode (error %d).\n",
    ret);
  ret = -EIO;
  goto out;
 }

 switch (data[0]) {
 case 129:
  macro_mode = "HW";
  break;

 case 128:
  macro_mode = "SW";
  break;
 default:
  dev_warn(dev, "K90 in unknown mode: %02hhx.\n",
    data[0]);
  ret = -EIO;
  goto out;
 }

 ret = snprintf(buf, PAGE_SIZE, "%s\n", macro_mode);
out:
 kfree(data);

 return ret;
}
