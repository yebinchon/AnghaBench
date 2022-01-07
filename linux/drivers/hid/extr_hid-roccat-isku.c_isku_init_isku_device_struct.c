
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct isku_device {int isku_lock; } ;


 int isku_get_actual_profile (struct usb_device*) ;
 int isku_profile_activated (struct isku_device*,int) ;
 int mutex_init (int *) ;

__attribute__((used)) static int isku_init_isku_device_struct(struct usb_device *usb_dev,
  struct isku_device *isku)
{
 int retval;

 mutex_init(&isku->isku_lock);

 retval = isku_get_actual_profile(usb_dev);
 if (retval < 0)
  return retval;
 isku_profile_activated(isku, retval);

 return 0;
}
