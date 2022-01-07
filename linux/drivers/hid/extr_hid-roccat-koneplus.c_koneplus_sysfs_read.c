
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct usb_device {int dummy; } ;
struct koneplus_device {int koneplus_lock; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef size_t loff_t ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct TYPE_3__ {struct device* parent; } ;


 int EINVAL ;
 int dev_get_drvdata (struct device*) ;
 struct koneplus_device* hid_get_drvdata (int ) ;
 struct usb_device* interface_to_usbdev (int ) ;
 TYPE_2__* kobj_to_dev (struct kobject*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int roccat_common2_receive (struct usb_device*,int ,char*,size_t) ;
 int to_usb_interface (struct device*) ;

__attribute__((used)) static ssize_t koneplus_sysfs_read(struct file *fp, struct kobject *kobj,
  char *buf, loff_t off, size_t count,
  size_t real_size, uint command)
{
 struct device *dev = kobj_to_dev(kobj)->parent->parent;
 struct koneplus_device *koneplus = hid_get_drvdata(dev_get_drvdata(dev));
 struct usb_device *usb_dev = interface_to_usbdev(to_usb_interface(dev));
 int retval;

 if (off >= real_size)
  return 0;

 if (off != 0 || count != real_size)
  return -EINVAL;

 mutex_lock(&koneplus->koneplus_lock);
 retval = roccat_common2_receive(usb_dev, command, buf, real_size);
 mutex_unlock(&koneplus->koneplus_lock);

 if (retval)
  return retval;

 return real_size;
}
