
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct bcm5974 {int pm_mutex; scalar_t__ opened; } ;


 int bcm5974_start_traffic (struct bcm5974*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bcm5974* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int bcm5974_resume(struct usb_interface *iface)
{
 struct bcm5974 *dev = usb_get_intfdata(iface);
 int error = 0;

 mutex_lock(&dev->pm_mutex);

 if (dev->opened)
  error = bcm5974_start_traffic(dev);

 mutex_unlock(&dev->pm_mutex);

 return error;
}
