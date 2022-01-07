
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct usb_device {int dummy; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {scalar_t__ private; } ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct TYPE_3__ {struct device* parent; } ;


 int KOVAPLUS_COMMAND_PROFILE_SETTINGS ;
 int KOVAPLUS_CONTROL_REQUEST_PROFILE_SETTINGS ;
 int KOVAPLUS_SIZE_PROFILE_SETTINGS ;
 struct usb_device* interface_to_usbdev (int ) ;
 TYPE_2__* kobj_to_dev (struct kobject*) ;
 scalar_t__ kovaplus_select_profile (struct usb_device*,int ,int ) ;
 scalar_t__ kovaplus_sysfs_read (struct file*,struct kobject*,char*,int ,size_t,int ,int ) ;
 int to_usb_interface (struct device*) ;

__attribute__((used)) static ssize_t kovaplus_sysfs_read_profilex_settings(struct file *fp,
  struct kobject *kobj, struct bin_attribute *attr, char *buf,
  loff_t off, size_t count)
{
 struct device *dev = kobj_to_dev(kobj)->parent->parent;
 struct usb_device *usb_dev = interface_to_usbdev(to_usb_interface(dev));
 ssize_t retval;

 retval = kovaplus_select_profile(usb_dev, *(uint *)(attr->private),
   KOVAPLUS_CONTROL_REQUEST_PROFILE_SETTINGS);
 if (retval)
  return retval;

 return kovaplus_sysfs_read(fp, kobj, buf, off, count,
   KOVAPLUS_SIZE_PROFILE_SETTINGS,
   KOVAPLUS_COMMAND_PROFILE_SETTINGS);
}
