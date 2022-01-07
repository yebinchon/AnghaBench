
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct cm109_dev {int pm_mutex; } ;
struct TYPE_3__ {int event; } ;
typedef TYPE_1__ pm_message_t ;


 int cm109_stop_traffic (struct cm109_dev*) ;
 int dev_info (int *,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cm109_dev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int cm109_usb_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct cm109_dev *dev = usb_get_intfdata(intf);

 dev_info(&intf->dev, "cm109: usb_suspend (event=%d)\n", message.event);

 mutex_lock(&dev->pm_mutex);
 cm109_stop_traffic(dev);
 mutex_unlock(&dev->pm_mutex);

 return 0;
}
