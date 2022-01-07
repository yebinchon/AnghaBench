
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct kovaplus_info {int firmware_version; } ;
struct kovaplus_device {int kovaplus_lock; } ;
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct device* parent; } ;


 int KOVAPLUS_COMMAND_INFO ;
 int KOVAPLUS_SIZE_INFO ;
 int PAGE_SIZE ;
 int dev_get_drvdata (struct device*) ;
 struct kovaplus_device* hid_get_drvdata (int ) ;
 struct usb_device* interface_to_usbdev (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int roccat_common2_receive (struct usb_device*,int ,struct kovaplus_info*,int ) ;
 int snprintf (char*,int ,char*,int) ;
 int to_usb_interface (struct device*) ;

__attribute__((used)) static ssize_t kovaplus_sysfs_show_firmware_version(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct kovaplus_device *kovaplus;
 struct usb_device *usb_dev;
 struct kovaplus_info info;

 dev = dev->parent->parent;
 kovaplus = hid_get_drvdata(dev_get_drvdata(dev));
 usb_dev = interface_to_usbdev(to_usb_interface(dev));

 mutex_lock(&kovaplus->kovaplus_lock);
 roccat_common2_receive(usb_dev, KOVAPLUS_COMMAND_INFO,
   &info, KOVAPLUS_SIZE_INFO);
 mutex_unlock(&kovaplus->kovaplus_lock);

 return snprintf(buf, PAGE_SIZE, "%d\n", info.firmware_version);
}
