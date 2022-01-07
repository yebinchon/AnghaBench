
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pegasus {int is_open; int intf; int pm_mutex; int init; int irq; } ;
struct input_dev {int dummy; } ;


 int cancel_work_sync (int *) ;
 struct pegasus* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_autopm_put_interface (int ) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void pegasus_close(struct input_dev *dev)
{
 struct pegasus *pegasus = input_get_drvdata(dev);

 mutex_lock(&pegasus->pm_mutex);
 usb_kill_urb(pegasus->irq);
 cancel_work_sync(&pegasus->init);
 pegasus->is_open = 0;
 mutex_unlock(&pegasus->pm_mutex);

 usb_autopm_put_interface(pegasus->intf);
}
