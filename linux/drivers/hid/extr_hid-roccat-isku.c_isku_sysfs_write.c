
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct usb_device {int dummy; } ;
struct kobject {int dummy; } ;
struct isku_device {int isku_lock; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct TYPE_3__ {struct device* parent; } ;


 int EINVAL ;
 int dev_get_drvdata (struct device*) ;
 struct isku_device* hid_get_drvdata (int ) ;
 struct usb_device* interface_to_usbdev (int ) ;
 TYPE_2__* kobj_to_dev (struct kobject*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int roccat_common2_send_with_status (struct usb_device*,int ,void*,size_t) ;
 int to_usb_interface (struct device*) ;

__attribute__((used)) static ssize_t isku_sysfs_write(struct file *fp, struct kobject *kobj,
  void const *buf, loff_t off, size_t count,
  size_t real_size, uint command)
{
 struct device *dev = kobj_to_dev(kobj)->parent->parent;
 struct isku_device *isku = hid_get_drvdata(dev_get_drvdata(dev));
 struct usb_device *usb_dev = interface_to_usbdev(to_usb_interface(dev));
 int retval;

 if (off != 0 || count > real_size)
  return -EINVAL;

 mutex_lock(&isku->isku_lock);
 retval = roccat_common2_send_with_status(usb_dev, command,
   (void *)buf, count);
 mutex_unlock(&isku->isku_lock);

 return retval ? retval : count;
}
