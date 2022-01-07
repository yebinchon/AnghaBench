
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_device {int dummy; } ;
struct kovaplus_roccat_report {unsigned long profile; unsigned long data1; scalar_t__ data2; scalar_t__ button; int type; } ;
struct kovaplus_device {int kovaplus_lock; int chrdev_minor; } ;
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct device* parent; } ;


 int EINVAL ;
 int KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_PROFILE_1 ;
 int dev_get_drvdata (struct device*) ;
 struct kovaplus_device* hid_get_drvdata (int ) ;
 struct usb_device* interface_to_usbdev (int ) ;
 int kovaplus_profile_activated (struct kovaplus_device*,unsigned long) ;
 int kovaplus_set_actual_profile (struct usb_device*,unsigned long) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int roccat_report_event (int ,int const*) ;
 int to_usb_interface (struct device*) ;

__attribute__((used)) static ssize_t kovaplus_sysfs_set_actual_profile(struct device *dev,
  struct device_attribute *attr, char const *buf, size_t size)
{
 struct kovaplus_device *kovaplus;
 struct usb_device *usb_dev;
 unsigned long profile;
 int retval;
 struct kovaplus_roccat_report roccat_report;

 dev = dev->parent->parent;
 kovaplus = hid_get_drvdata(dev_get_drvdata(dev));
 usb_dev = interface_to_usbdev(to_usb_interface(dev));

 retval = kstrtoul(buf, 10, &profile);
 if (retval)
  return retval;

 if (profile >= 5)
  return -EINVAL;

 mutex_lock(&kovaplus->kovaplus_lock);
 retval = kovaplus_set_actual_profile(usb_dev, profile);
 if (retval) {
  mutex_unlock(&kovaplus->kovaplus_lock);
  return retval;
 }

 kovaplus_profile_activated(kovaplus, profile);

 roccat_report.type = KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_PROFILE_1;
 roccat_report.profile = profile + 1;
 roccat_report.button = 0;
 roccat_report.data1 = profile + 1;
 roccat_report.data2 = 0;
 roccat_report_event(kovaplus->chrdev_minor,
   (uint8_t const *)&roccat_report);

 mutex_unlock(&kovaplus->kovaplus_lock);

 return size;
}
