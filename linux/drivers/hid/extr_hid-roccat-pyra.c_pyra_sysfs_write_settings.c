
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_device {int dummy; } ;
struct pyra_settings {scalar_t__ startup_profile; } ;
struct pyra_roccat_report {scalar_t__ value; scalar_t__ key; int type; } ;
struct pyra_device {int pyra_lock; int chrdev_minor; int profile_settings; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct TYPE_3__ {struct device* parent; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int EINVAL ;
 int PYRA_MOUSE_EVENT_BUTTON_TYPE_PROFILE_2 ;
 size_t PYRA_SIZE_SETTINGS ;
 int dev_get_drvdata (struct device*) ;
 struct pyra_device* hid_get_drvdata (int ) ;
 struct usb_device* interface_to_usbdev (int ) ;
 TYPE_2__* kobj_to_dev (struct kobject*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int profile_activated (struct pyra_device*,scalar_t__) ;
 int pyra_set_settings (struct usb_device*,struct pyra_settings const*) ;
 int roccat_report_event (int ,int const*) ;
 int to_usb_interface (struct device*) ;

__attribute__((used)) static ssize_t pyra_sysfs_write_settings(struct file *fp,
  struct kobject *kobj, struct bin_attribute *attr, char *buf,
  loff_t off, size_t count)
{
 struct device *dev = kobj_to_dev(kobj)->parent->parent;
 struct pyra_device *pyra = hid_get_drvdata(dev_get_drvdata(dev));
 struct usb_device *usb_dev = interface_to_usbdev(to_usb_interface(dev));
 int retval = 0;
 struct pyra_roccat_report roccat_report;
 struct pyra_settings const *settings;

 if (off != 0 || count != PYRA_SIZE_SETTINGS)
  return -EINVAL;

 settings = (struct pyra_settings const *)buf;
 if (settings->startup_profile >= ARRAY_SIZE(pyra->profile_settings))
  return -EINVAL;

 mutex_lock(&pyra->pyra_lock);

 retval = pyra_set_settings(usb_dev, settings);
 if (retval) {
  mutex_unlock(&pyra->pyra_lock);
  return retval;
 }

 profile_activated(pyra, settings->startup_profile);

 roccat_report.type = PYRA_MOUSE_EVENT_BUTTON_TYPE_PROFILE_2;
 roccat_report.value = settings->startup_profile + 1;
 roccat_report.key = 0;
 roccat_report_event(pyra->chrdev_minor,
   (uint8_t const *)&roccat_report);

 mutex_unlock(&pyra->pyra_lock);
 return PYRA_SIZE_SETTINGS;
}
