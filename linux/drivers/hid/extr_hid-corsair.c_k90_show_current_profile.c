
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
 int K90_REQUEST_STATUS ;
 int PAGE_SIZE ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dev_warn (struct device*,char*,char) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int snprintf (char*,int ,char*,int) ;
 struct usb_interface* to_usb_interface (int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,char*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static ssize_t k90_show_current_profile(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 int ret;
 struct usb_interface *usbif = to_usb_interface(dev->parent);
 struct usb_device *usbdev = interface_to_usbdev(usbif);
 int current_profile;
 char *data;

 data = kmalloc(8, GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 ret = usb_control_msg(usbdev, usb_rcvctrlpipe(usbdev, 0),
         K90_REQUEST_STATUS,
         USB_DIR_IN | USB_TYPE_VENDOR |
         USB_RECIP_DEVICE, 0, 0, data, 8,
         USB_CTRL_SET_TIMEOUT);
 if (ret < 8) {
  dev_warn(dev, "Failed to get K90 initial state (error %d).\n",
    ret);
  ret = -EIO;
  goto out;
 }
 current_profile = data[7];
 if (current_profile < 1 || current_profile > 3) {
  dev_warn(dev, "Read invalid current profile: %02hhx.\n",
    data[7]);
  ret = -EIO;
  goto out;
 }

 ret = snprintf(buf, PAGE_SIZE, "%d\n", current_profile);
out:
 kfree(data);

 return ret;
}
