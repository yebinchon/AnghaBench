
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct usb_device {int dummy; } ;
struct kovaplus_device {int * profile_buttons; int * profile_settings; int kovaplus_lock; } ;


 int kovaplus_get_actual_profile (struct usb_device*) ;
 int kovaplus_get_profile_buttons (struct usb_device*,int *,int) ;
 int kovaplus_get_profile_settings (struct usb_device*,int *,int) ;
 int kovaplus_profile_activated (struct kovaplus_device*,int) ;
 int msleep (int) ;
 int mutex_init (int *) ;

__attribute__((used)) static int kovaplus_init_kovaplus_device_struct(struct usb_device *usb_dev,
  struct kovaplus_device *kovaplus)
{
 int retval, i;
 static uint wait = 70;

 mutex_init(&kovaplus->kovaplus_lock);

 for (i = 0; i < 5; ++i) {
  msleep(wait);
  retval = kovaplus_get_profile_settings(usb_dev,
    &kovaplus->profile_settings[i], i);
  if (retval)
   return retval;

  msleep(wait);
  retval = kovaplus_get_profile_buttons(usb_dev,
    &kovaplus->profile_buttons[i], i);
  if (retval)
   return retval;
 }

 msleep(wait);
 retval = kovaplus_get_actual_profile(usb_dev);
 if (retval < 0)
  return retval;
 kovaplus_profile_activated(kovaplus, retval);

 return 0;
}
