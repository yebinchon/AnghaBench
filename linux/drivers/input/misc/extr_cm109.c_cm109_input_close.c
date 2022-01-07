
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct cm109_dev {int intf; int pm_mutex; scalar_t__ open; } ;


 int cm109_stop_traffic (struct cm109_dev*) ;
 struct cm109_dev* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static void cm109_input_close(struct input_dev *idev)
{
 struct cm109_dev *dev = input_get_drvdata(idev);

 mutex_lock(&dev->pm_mutex);






 cm109_stop_traffic(dev);
 dev->open = 0;

 mutex_unlock(&dev->pm_mutex);

 usb_autopm_put_interface(dev->intf);
}
