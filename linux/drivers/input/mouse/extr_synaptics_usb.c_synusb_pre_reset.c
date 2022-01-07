
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct synusb {int urb; int pm_mutex; } ;


 int mutex_lock (int *) ;
 struct synusb* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int synusb_pre_reset(struct usb_interface *intf)
{
 struct synusb *synusb = usb_get_intfdata(intf);

 mutex_lock(&synusb->pm_mutex);
 usb_kill_urb(synusb->urb);

 return 0;
}
