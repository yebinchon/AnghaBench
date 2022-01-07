
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct pxrc {int urb; int pm_mutex; } ;


 int mutex_lock (int *) ;
 struct pxrc* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int pxrc_pre_reset(struct usb_interface *intf)
{
 struct pxrc *pxrc = usb_get_intfdata(intf);

 mutex_lock(&pxrc->pm_mutex);
 usb_kill_urb(pxrc->urb);
 return 0;
}
