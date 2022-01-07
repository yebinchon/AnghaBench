
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct arvo_device {int actual_profile; int arvo_lock; } ;


 int arvo_get_actual_profile (struct usb_device*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int arvo_init_arvo_device_struct(struct usb_device *usb_dev,
  struct arvo_device *arvo)
{
 int retval;

 mutex_init(&arvo->arvo_lock);

 retval = arvo_get_actual_profile(usb_dev);
 if (retval < 0)
  return retval;
 arvo->actual_profile = retval;

 return 0;
}
