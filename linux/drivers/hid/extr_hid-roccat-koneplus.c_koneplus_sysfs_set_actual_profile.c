
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_device {int dummy; } ;
struct koneplus_roccat_report {unsigned long data1; unsigned long profile; scalar_t__ data2; int type; } ;
struct koneplus_device {int koneplus_lock; int chrdev_minor; } ;
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct device* parent; } ;


 int EINVAL ;
 int KONEPLUS_MOUSE_REPORT_BUTTON_TYPE_PROFILE ;
 int dev_get_drvdata (struct device*) ;
 struct koneplus_device* hid_get_drvdata (int ) ;
 struct usb_device* interface_to_usbdev (int ) ;
 int koneplus_profile_activated (struct koneplus_device*,unsigned long) ;
 int koneplus_set_actual_profile (struct usb_device*,unsigned long) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int roccat_report_event (int ,int const*) ;
 int to_usb_interface (struct device*) ;

__attribute__((used)) static ssize_t koneplus_sysfs_set_actual_profile(struct device *dev,
  struct device_attribute *attr, char const *buf, size_t size)
{
 struct koneplus_device *koneplus;
 struct usb_device *usb_dev;
 unsigned long profile;
 int retval;
 struct koneplus_roccat_report roccat_report;

 dev = dev->parent->parent;
 koneplus = hid_get_drvdata(dev_get_drvdata(dev));
 usb_dev = interface_to_usbdev(to_usb_interface(dev));

 retval = kstrtoul(buf, 10, &profile);
 if (retval)
  return retval;

 if (profile > 4)
  return -EINVAL;

 mutex_lock(&koneplus->koneplus_lock);

 retval = koneplus_set_actual_profile(usb_dev, profile);
 if (retval) {
  mutex_unlock(&koneplus->koneplus_lock);
  return retval;
 }

 koneplus_profile_activated(koneplus, profile);

 roccat_report.type = KONEPLUS_MOUSE_REPORT_BUTTON_TYPE_PROFILE;
 roccat_report.data1 = profile + 1;
 roccat_report.data2 = 0;
 roccat_report.profile = profile + 1;
 roccat_report_event(koneplus->chrdev_minor,
   (uint8_t const *)&roccat_report);

 mutex_unlock(&koneplus->koneplus_lock);

 return size;
}
