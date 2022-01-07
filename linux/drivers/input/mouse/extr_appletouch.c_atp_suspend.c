
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct atp {int urb; } ;
typedef int pm_message_t ;


 struct atp* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int atp_suspend(struct usb_interface *iface, pm_message_t message)
{
 struct atp *dev = usb_get_intfdata(iface);

 usb_kill_urb(dev->urb);
 return 0;
}
