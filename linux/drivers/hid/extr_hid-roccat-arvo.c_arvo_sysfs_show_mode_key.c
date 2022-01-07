
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
struct arvo_mode_key {int state; } ;
struct arvo_device {int arvo_lock; } ;
typedef int ssize_t ;
struct TYPE_2__ {int parent; } ;


 int ARVO_COMMAND_MODE_KEY ;
 int PAGE_SIZE ;
 int dev_get_drvdata (int ) ;
 struct arvo_device* hid_get_drvdata (int ) ;
 struct usb_device* interface_to_usbdev (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int roccat_common2_receive (struct usb_device*,int ,struct arvo_mode_key*,int) ;
 int snprintf (char*,int ,char*,int) ;
 int to_usb_interface (int ) ;

__attribute__((used)) static ssize_t arvo_sysfs_show_mode_key(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct arvo_device *arvo =
   hid_get_drvdata(dev_get_drvdata(dev->parent->parent));
 struct usb_device *usb_dev =
   interface_to_usbdev(to_usb_interface(dev->parent->parent));
 struct arvo_mode_key temp_buf;
 int retval;

 mutex_lock(&arvo->arvo_lock);
 retval = roccat_common2_receive(usb_dev, ARVO_COMMAND_MODE_KEY,
   &temp_buf, sizeof(struct arvo_mode_key));
 mutex_unlock(&arvo->arvo_lock);
 if (retval)
  return retval;

 return snprintf(buf, PAGE_SIZE, "%d\n", temp_buf.state);
}
