
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct pyra_settings {int startup_profile; } ;
struct pyra_device {int * profile_settings; int pyra_lock; } ;


 int mutex_init (int *) ;
 int profile_activated (struct pyra_device*,int ) ;
 int pyra_get_profile_settings (struct usb_device*,int *,int) ;
 int pyra_get_settings (struct usb_device*,struct pyra_settings*) ;

__attribute__((used)) static int pyra_init_pyra_device_struct(struct usb_device *usb_dev,
  struct pyra_device *pyra)
{
 struct pyra_settings settings;
 int retval, i;

 mutex_init(&pyra->pyra_lock);

 retval = pyra_get_settings(usb_dev, &settings);
 if (retval)
  return retval;

 for (i = 0; i < 5; ++i) {
  retval = pyra_get_profile_settings(usb_dev,
    &pyra->profile_settings[i], i);
  if (retval)
   return retval;
 }

 profile_activated(pyra, settings.startup_profile);

 return 0;
}
