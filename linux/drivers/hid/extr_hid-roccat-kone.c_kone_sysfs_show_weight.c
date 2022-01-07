
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct kone_device {int kone_lock; } ;
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct device* parent; } ;


 int PAGE_SIZE ;
 int dev_get_drvdata (struct device*) ;
 struct kone_device* hid_get_drvdata (int ) ;
 struct usb_device* interface_to_usbdev (int ) ;
 int kone_get_weight (struct usb_device*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,int) ;
 int to_usb_interface (struct device*) ;

__attribute__((used)) static ssize_t kone_sysfs_show_weight(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct kone_device *kone;
 struct usb_device *usb_dev;
 int weight = 0;
 int retval;

 dev = dev->parent->parent;
 kone = hid_get_drvdata(dev_get_drvdata(dev));
 usb_dev = interface_to_usbdev(to_usb_interface(dev));

 mutex_lock(&kone->kone_lock);
 retval = kone_get_weight(usb_dev, &weight);
 mutex_unlock(&kone->kone_lock);

 if (retval)
  return retval;
 return snprintf(buf, PAGE_SIZE, "%d\n", weight);
}
