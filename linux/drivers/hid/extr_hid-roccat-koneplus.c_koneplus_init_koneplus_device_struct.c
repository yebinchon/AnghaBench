
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct koneplus_device {int koneplus_lock; } ;


 int koneplus_get_actual_profile (struct usb_device*) ;
 int koneplus_profile_activated (struct koneplus_device*,int) ;
 int mutex_init (int *) ;

__attribute__((used)) static int koneplus_init_koneplus_device_struct(struct usb_device *usb_dev,
  struct koneplus_device *koneplus)
{
 int retval;

 mutex_init(&koneplus->koneplus_lock);

 retval = koneplus_get_actual_profile(usb_dev);
 if (retval < 0)
  return retval;
 koneplus_profile_activated(koneplus, retval);

 return 0;
}
