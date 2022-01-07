
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct synusb {int pm_mutex; int urb; } ;
typedef int pm_message_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct synusb* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int synusb_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct synusb *synusb = usb_get_intfdata(intf);

 mutex_lock(&synusb->pm_mutex);
 usb_kill_urb(synusb->urb);
 mutex_unlock(&synusb->pm_mutex);

 return 0;
}
