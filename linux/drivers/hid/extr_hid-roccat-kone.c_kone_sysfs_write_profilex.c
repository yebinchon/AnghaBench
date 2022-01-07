
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint ;
struct usb_device {int dummy; } ;
struct kone_profile {int dummy; } ;
struct kone_device {int kone_lock; struct kone_profile* profiles; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {scalar_t__ private; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct TYPE_3__ {struct device* parent; } ;


 int EINVAL ;
 int dev_get_drvdata (struct device*) ;
 struct kone_device* hid_get_drvdata (int ) ;
 struct usb_device* interface_to_usbdev (int ) ;
 TYPE_2__* kobj_to_dev (struct kobject*) ;
 int kone_set_profile (struct usb_device*,struct kone_profile const*,size_t) ;
 int memcmp (char*,struct kone_profile*,int) ;
 int memcpy (struct kone_profile*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int to_usb_interface (struct device*) ;

__attribute__((used)) static ssize_t kone_sysfs_write_profilex(struct file *fp,
  struct kobject *kobj, struct bin_attribute *attr,
  char *buf, loff_t off, size_t count) {
 struct device *dev = kobj_to_dev(kobj)->parent->parent;
 struct kone_device *kone = hid_get_drvdata(dev_get_drvdata(dev));
 struct usb_device *usb_dev = interface_to_usbdev(to_usb_interface(dev));
 struct kone_profile *profile;
 int retval = 0, difference;


 if (off != 0 || count != sizeof(struct kone_profile))
  return -EINVAL;

 profile = &kone->profiles[*(uint *)(attr->private)];

 mutex_lock(&kone->kone_lock);
 difference = memcmp(buf, profile, sizeof(struct kone_profile));
 if (difference) {
  retval = kone_set_profile(usb_dev,
    (struct kone_profile const *)buf,
    *(uint *)(attr->private) + 1);
  if (!retval)
   memcpy(profile, buf, sizeof(struct kone_profile));
 }
 mutex_unlock(&kone->kone_lock);

 if (retval)
  return retval;

 return sizeof(struct kone_profile);
}
