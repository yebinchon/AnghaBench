
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct iforce_usb {int out; int irq; TYPE_1__ iforce; } ;


 int input_unregister_device (int ) ;
 int kfree (struct iforce_usb*) ;
 int usb_free_urb (int ) ;
 struct iforce_usb* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void iforce_usb_disconnect(struct usb_interface *intf)
{
 struct iforce_usb *iforce_usb = usb_get_intfdata(intf);

 usb_set_intfdata(intf, ((void*)0));

 input_unregister_device(iforce_usb->iforce.dev);

 usb_free_urb(iforce_usb->irq);
 usb_free_urb(iforce_usb->out);

 kfree(iforce_usb);
}
