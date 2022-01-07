
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct pyra_settings {int startup_profile; } ;
struct pyra_device {int pyra_lock; } ;
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
typedef int ssize_t ;
struct TYPE_2__ {int parent; } ;


 int PAGE_SIZE ;
 int PYRA_COMMAND_SETTINGS ;
 int PYRA_SIZE_SETTINGS ;
 int dev_get_drvdata (int ) ;
 struct pyra_device* hid_get_drvdata (int ) ;
 struct usb_device* interface_to_usbdev (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int roccat_common2_receive (struct usb_device*,int ,struct pyra_settings*,int ) ;
 int snprintf (char*,int ,char*,int) ;
 int to_usb_interface (struct device*) ;

__attribute__((used)) static ssize_t pyra_sysfs_show_actual_profile(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct pyra_device *pyra =
   hid_get_drvdata(dev_get_drvdata(dev->parent->parent));
 struct usb_device *usb_dev = interface_to_usbdev(to_usb_interface(dev));
 struct pyra_settings settings;

 mutex_lock(&pyra->pyra_lock);
 roccat_common2_receive(usb_dev, PYRA_COMMAND_SETTINGS,
   &settings, PYRA_SIZE_SETTINGS);
 mutex_unlock(&pyra->pyra_lock);

 return snprintf(buf, PAGE_SIZE, "%d\n", settings.startup_profile);
}
