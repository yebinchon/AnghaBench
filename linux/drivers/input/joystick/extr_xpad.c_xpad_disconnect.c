
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xpad {scalar_t__ xtype; int idata_dma; int idata; int udev; int irq_in; } ;
struct usb_interface {int dummy; } ;


 int XPAD_PKT_LEN ;
 scalar_t__ XTYPE_XBOX360W ;
 int kfree (struct usb_xpad*) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (int ) ;
 struct usb_xpad* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int xpad360w_stop_input (struct usb_xpad*) ;
 int xpad_deinit_input (struct usb_xpad*) ;
 int xpad_deinit_output (struct usb_xpad*) ;
 int xpad_stop_output (struct usb_xpad*) ;

__attribute__((used)) static void xpad_disconnect(struct usb_interface *intf)
{
 struct usb_xpad *xpad = usb_get_intfdata(intf);

 if (xpad->xtype == XTYPE_XBOX360W)
  xpad360w_stop_input(xpad);

 xpad_deinit_input(xpad);





 xpad_stop_output(xpad);

 xpad_deinit_output(xpad);

 usb_free_urb(xpad->irq_in);
 usb_free_coherent(xpad->udev, XPAD_PKT_LEN,
   xpad->idata, xpad->idata_dma);

 kfree(xpad);

 usb_set_intfdata(intf, ((void*)0));
}
