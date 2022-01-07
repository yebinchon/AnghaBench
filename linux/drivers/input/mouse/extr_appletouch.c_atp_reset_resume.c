
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct atp {int dummy; } ;


 int atp_recover (struct atp*) ;
 struct atp* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int atp_reset_resume(struct usb_interface *iface)
{
 struct atp *dev = usb_get_intfdata(iface);

 return atp_recover(dev);
}
