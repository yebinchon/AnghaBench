
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct kone_settings {int dummy; } ;
struct TYPE_6__ {int startup_profile; } ;
struct kone_device {int kone_lock; TYPE_2__ settings; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_7__ {TYPE_1__* parent; } ;
struct TYPE_5__ {struct device* parent; } ;


 int EINVAL ;
 int dev_get_drvdata (struct device*) ;
 struct kone_device* hid_get_drvdata (int ) ;
 struct usb_device* interface_to_usbdev (int ) ;
 TYPE_4__* kobj_to_dev (struct kobject*) ;
 int kone_profile_activated (struct kone_device*,int) ;
 int kone_profile_report (struct kone_device*,int) ;
 int kone_set_settings (struct usb_device*,struct kone_settings const*) ;
 int memcmp (char*,TYPE_2__*,int) ;
 int memcpy (TYPE_2__*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int to_usb_interface (struct device*) ;

__attribute__((used)) static ssize_t kone_sysfs_write_settings(struct file *fp, struct kobject *kobj,
  struct bin_attribute *attr, char *buf,
  loff_t off, size_t count) {
 struct device *dev = kobj_to_dev(kobj)->parent->parent;
 struct kone_device *kone = hid_get_drvdata(dev_get_drvdata(dev));
 struct usb_device *usb_dev = interface_to_usbdev(to_usb_interface(dev));
 int retval = 0, difference, old_profile;


 if (off != 0 || count != sizeof(struct kone_settings))
  return -EINVAL;

 mutex_lock(&kone->kone_lock);
 difference = memcmp(buf, &kone->settings, sizeof(struct kone_settings));
 if (difference) {
  retval = kone_set_settings(usb_dev,
    (struct kone_settings const *)buf);
  if (retval) {
   mutex_unlock(&kone->kone_lock);
   return retval;
  }

  old_profile = kone->settings.startup_profile;
  memcpy(&kone->settings, buf, sizeof(struct kone_settings));

  kone_profile_activated(kone, kone->settings.startup_profile);

  if (kone->settings.startup_profile != old_profile)
   kone_profile_report(kone, kone->settings.startup_profile);
 }
 mutex_unlock(&kone->kone_lock);

 return sizeof(struct kone_settings);
}
