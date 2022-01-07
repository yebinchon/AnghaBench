
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct bcm5974 {int opened; int intf; int pm_mutex; } ;


 int bcm5974_start_traffic (struct bcm5974*) ;
 struct bcm5974* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int bcm5974_open(struct input_dev *input)
{
 struct bcm5974 *dev = input_get_drvdata(input);
 int error;

 error = usb_autopm_get_interface(dev->intf);
 if (error)
  return error;

 mutex_lock(&dev->pm_mutex);

 error = bcm5974_start_traffic(dev);
 if (!error)
  dev->opened = 1;

 mutex_unlock(&dev->pm_mutex);

 if (error)
  usb_autopm_put_interface(dev->intf);

 return error;
}
