
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct cm109_dev {int pm_mutex; scalar_t__ resetting; } ;


 int cm109_restore_state (struct cm109_dev*) ;
 int mutex_unlock (int *) ;
 int smp_wmb () ;
 struct cm109_dev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int cm109_usb_post_reset(struct usb_interface *intf)
{
 struct cm109_dev *dev = usb_get_intfdata(intf);

 dev->resetting = 0;
 smp_wmb();

 cm109_restore_state(dev);

 mutex_unlock(&dev->pm_mutex);

 return 0;
}
