
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct roccat_common2_device {int lock; } ;


 int mutex_init (int *) ;

int roccat_common2_device_init_struct(struct usb_device *usb_dev,
  struct roccat_common2_device *dev)
{
 mutex_init(&dev->lock);
 return 0;
}
