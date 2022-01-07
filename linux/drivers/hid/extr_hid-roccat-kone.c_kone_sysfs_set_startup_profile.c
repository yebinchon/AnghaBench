
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct TYPE_5__ {unsigned long startup_profile; } ;
struct kone_device {int kone_lock; TYPE_2__ settings; } ;
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
typedef int ssize_t ;
struct TYPE_4__ {struct device* parent; } ;


 int EINVAL ;
 int dev_get_drvdata (struct device*) ;
 struct kone_device* hid_get_drvdata (int ) ;
 struct usb_device* interface_to_usbdev (int ) ;
 int kone_profile_activated (struct kone_device*,unsigned long) ;
 int kone_profile_report (struct kone_device*,unsigned long) ;
 int kone_set_settings (struct usb_device*,TYPE_2__*) ;
 int kone_set_settings_checksum (TYPE_2__*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int to_usb_interface (struct device*) ;

__attribute__((used)) static ssize_t kone_sysfs_set_startup_profile(struct device *dev,
  struct device_attribute *attr, char const *buf, size_t size)
{
 struct kone_device *kone;
 struct usb_device *usb_dev;
 int retval;
 unsigned long new_startup_profile;

 dev = dev->parent->parent;
 kone = hid_get_drvdata(dev_get_drvdata(dev));
 usb_dev = interface_to_usbdev(to_usb_interface(dev));

 retval = kstrtoul(buf, 10, &new_startup_profile);
 if (retval)
  return retval;

 if (new_startup_profile < 1 || new_startup_profile > 5)
  return -EINVAL;

 mutex_lock(&kone->kone_lock);

 kone->settings.startup_profile = new_startup_profile;
 kone_set_settings_checksum(&kone->settings);

 retval = kone_set_settings(usb_dev, &kone->settings);
 if (retval) {
  mutex_unlock(&kone->kone_lock);
  return retval;
 }


 kone_profile_activated(kone, new_startup_profile);
 kone_profile_report(kone, new_startup_profile);

 mutex_unlock(&kone->kone_lock);
 return size;
}
