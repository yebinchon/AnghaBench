
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_device {int dummy; } ;
struct isku_roccat_report {unsigned long data1; unsigned long profile; scalar_t__ data2; int event; } ;
struct isku_device {int isku_lock; int chrdev_minor; } ;
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct device* parent; } ;


 int EINVAL ;
 int ISKU_REPORT_BUTTON_EVENT_PROFILE ;
 int dev_get_drvdata (struct device*) ;
 struct isku_device* hid_get_drvdata (int ) ;
 struct usb_device* interface_to_usbdev (int ) ;
 int isku_profile_activated (struct isku_device*,unsigned long) ;
 int isku_set_actual_profile (struct usb_device*,unsigned long) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int roccat_report_event (int ,int const*) ;
 int to_usb_interface (struct device*) ;

__attribute__((used)) static ssize_t isku_sysfs_set_actual_profile(struct device *dev,
  struct device_attribute *attr, char const *buf, size_t size)
{
 struct isku_device *isku;
 struct usb_device *usb_dev;
 unsigned long profile;
 int retval;
 struct isku_roccat_report roccat_report;

 dev = dev->parent->parent;
 isku = hid_get_drvdata(dev_get_drvdata(dev));
 usb_dev = interface_to_usbdev(to_usb_interface(dev));

 retval = kstrtoul(buf, 10, &profile);
 if (retval)
  return retval;

 if (profile > 4)
  return -EINVAL;

 mutex_lock(&isku->isku_lock);

 retval = isku_set_actual_profile(usb_dev, profile);
 if (retval) {
  mutex_unlock(&isku->isku_lock);
  return retval;
 }

 isku_profile_activated(isku, profile);

 roccat_report.event = ISKU_REPORT_BUTTON_EVENT_PROFILE;
 roccat_report.data1 = profile + 1;
 roccat_report.data2 = 0;
 roccat_report.profile = profile + 1;
 roccat_report_event(isku->chrdev_minor, (uint8_t const *)&roccat_report);

 mutex_unlock(&isku->isku_lock);

 return size;
}
