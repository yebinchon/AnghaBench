
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
struct arvo_device {unsigned long actual_profile; int arvo_lock; } ;
struct arvo_actual_profile {unsigned long actual_profile; int command; } ;
typedef int ssize_t ;
struct TYPE_2__ {int parent; } ;


 int ARVO_COMMAND_ACTUAL_PROFILE ;
 int EINVAL ;
 int dev_get_drvdata (int ) ;
 struct arvo_device* hid_get_drvdata (int ) ;
 struct usb_device* interface_to_usbdev (int ) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int roccat_common2_send (struct usb_device*,int ,struct arvo_actual_profile*,int) ;
 int to_usb_interface (int ) ;

__attribute__((used)) static ssize_t arvo_sysfs_set_actual_profile(struct device *dev,
  struct device_attribute *attr, char const *buf, size_t size)
{
 struct arvo_device *arvo =
   hid_get_drvdata(dev_get_drvdata(dev->parent->parent));
 struct usb_device *usb_dev =
   interface_to_usbdev(to_usb_interface(dev->parent->parent));
 struct arvo_actual_profile temp_buf;
 unsigned long profile;
 int retval;

 retval = kstrtoul(buf, 10, &profile);
 if (retval)
  return retval;

 if (profile < 1 || profile > 5)
  return -EINVAL;

 temp_buf.command = ARVO_COMMAND_ACTUAL_PROFILE;
 temp_buf.actual_profile = profile;

 mutex_lock(&arvo->arvo_lock);
 retval = roccat_common2_send(usb_dev, ARVO_COMMAND_ACTUAL_PROFILE,
   &temp_buf, sizeof(struct arvo_actual_profile));
 if (!retval) {
  arvo->actual_profile = profile;
  retval = size;
 }
 mutex_unlock(&arvo->arvo_lock);
 return retval;
}
