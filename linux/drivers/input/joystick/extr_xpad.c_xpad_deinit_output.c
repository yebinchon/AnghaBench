
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xpad {scalar_t__ xtype; int odata_dma; int odata; int udev; int irq_out; } ;


 int XPAD_PKT_LEN ;
 scalar_t__ XTYPE_UNKNOWN ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void xpad_deinit_output(struct usb_xpad *xpad)
{
 if (xpad->xtype != XTYPE_UNKNOWN) {
  usb_free_urb(xpad->irq_out);
  usb_free_coherent(xpad->udev, XPAD_PKT_LEN,
    xpad->odata, xpad->odata_dma);
 }
}
