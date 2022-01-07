
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtouch_usb {int irq; } ;
struct usb_interface {int dummy; } ;
typedef int pm_message_t ;


 struct usbtouch_usb* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int usbtouch_suspend
(struct usb_interface *intf, pm_message_t message)
{
 struct usbtouch_usb *usbtouch = usb_get_intfdata(intf);

 usb_kill_urb(usbtouch->irq);

 return 0;
}
