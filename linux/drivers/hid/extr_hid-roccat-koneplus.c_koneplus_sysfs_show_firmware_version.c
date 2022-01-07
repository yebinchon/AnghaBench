
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct koneplus_info {int firmware_version; } ;
struct koneplus_device {int koneplus_lock; } ;
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct device* parent; } ;


 int KONEPLUS_COMMAND_INFO ;
 int KONEPLUS_SIZE_INFO ;
 int PAGE_SIZE ;
 int dev_get_drvdata (struct device*) ;
 struct koneplus_device* hid_get_drvdata (int ) ;
 struct usb_device* interface_to_usbdev (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int roccat_common2_receive (struct usb_device*,int ,struct koneplus_info*,int ) ;
 int snprintf (char*,int ,char*,int) ;
 int to_usb_interface (struct device*) ;

__attribute__((used)) static ssize_t koneplus_sysfs_show_firmware_version(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct koneplus_device *koneplus;
 struct usb_device *usb_dev;
 struct koneplus_info info;

 dev = dev->parent->parent;
 koneplus = hid_get_drvdata(dev_get_drvdata(dev));
 usb_dev = interface_to_usbdev(to_usb_interface(dev));

 mutex_lock(&koneplus->koneplus_lock);
 roccat_common2_receive(usb_dev, KONEPLUS_COMMAND_INFO,
   &info, KONEPLUS_SIZE_INFO);
 mutex_unlock(&koneplus->koneplus_lock);

 return snprintf(buf, PAGE_SIZE, "%d\n", info.firmware_version);
}
