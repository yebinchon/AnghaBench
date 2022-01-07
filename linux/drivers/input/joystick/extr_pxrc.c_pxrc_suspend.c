
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct pxrc {int pm_mutex; int urb; scalar_t__ is_open; } ;
typedef int pm_message_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct pxrc* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int pxrc_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct pxrc *pxrc = usb_get_intfdata(intf);

 mutex_lock(&pxrc->pm_mutex);
 if (pxrc->is_open)
  usb_kill_urb(pxrc->urb);
 mutex_unlock(&pxrc->pm_mutex);

 return 0;
}
