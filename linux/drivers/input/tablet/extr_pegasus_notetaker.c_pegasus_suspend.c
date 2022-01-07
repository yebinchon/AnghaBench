
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct pegasus {int pm_mutex; int init; int irq; } ;
typedef int pm_message_t ;


 int cancel_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct pegasus* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int pegasus_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct pegasus *pegasus = usb_get_intfdata(intf);

 mutex_lock(&pegasus->pm_mutex);
 usb_kill_urb(pegasus->irq);
 cancel_work_sync(&pegasus->init);
 mutex_unlock(&pegasus->pm_mutex);

 return 0;
}
