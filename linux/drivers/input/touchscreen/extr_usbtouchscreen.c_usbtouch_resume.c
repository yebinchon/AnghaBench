
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbtouch_usb {int pm_mutex; int irq; TYPE_1__* type; scalar_t__ is_open; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {scalar_t__ irq_always; } ;


 int GFP_NOIO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct usbtouch_usb* usb_get_intfdata (struct usb_interface*) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int usbtouch_resume(struct usb_interface *intf)
{
 struct usbtouch_usb *usbtouch = usb_get_intfdata(intf);
 int result = 0;

 mutex_lock(&usbtouch->pm_mutex);
 if (usbtouch->is_open || usbtouch->type->irq_always)
  result = usb_submit_urb(usbtouch->irq, GFP_NOIO);
 mutex_unlock(&usbtouch->pm_mutex);

 return result;
}
