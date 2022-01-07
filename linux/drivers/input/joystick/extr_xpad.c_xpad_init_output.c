
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_xpad {scalar_t__ xtype; int odata_dma; int odata; int udev; TYPE_1__* irq_out; int odata_lock; int irq_out_anchor; } ;
struct usb_interface {int dummy; } ;
struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; } ;
struct TYPE_3__ {int transfer_flags; int transfer_dma; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int XPAD_PKT_LEN ;
 scalar_t__ XTYPE_UNKNOWN ;
 int init_usb_anchor (int *) ;
 int spin_lock_init (int *) ;
 int usb_alloc_coherent (int ,int ,int ,int *) ;
 TYPE_1__* usb_alloc_urb (int ,int ) ;
 int usb_fill_int_urb (TYPE_1__*,int ,int ,int ,int ,int ,struct usb_xpad*,int ) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_sndintpipe (int ,int ) ;
 int xpad_irq_out ;

__attribute__((used)) static int xpad_init_output(struct usb_interface *intf, struct usb_xpad *xpad,
   struct usb_endpoint_descriptor *ep_irq_out)
{
 int error;

 if (xpad->xtype == XTYPE_UNKNOWN)
  return 0;

 init_usb_anchor(&xpad->irq_out_anchor);

 xpad->odata = usb_alloc_coherent(xpad->udev, XPAD_PKT_LEN,
      GFP_KERNEL, &xpad->odata_dma);
 if (!xpad->odata)
  return -ENOMEM;

 spin_lock_init(&xpad->odata_lock);

 xpad->irq_out = usb_alloc_urb(0, GFP_KERNEL);
 if (!xpad->irq_out) {
  error = -ENOMEM;
  goto err_free_coherent;
 }

 usb_fill_int_urb(xpad->irq_out, xpad->udev,
    usb_sndintpipe(xpad->udev, ep_irq_out->bEndpointAddress),
    xpad->odata, XPAD_PKT_LEN,
    xpad_irq_out, xpad, ep_irq_out->bInterval);
 xpad->irq_out->transfer_dma = xpad->odata_dma;
 xpad->irq_out->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

 return 0;

err_free_coherent:
 usb_free_coherent(xpad->udev, XPAD_PKT_LEN, xpad->odata, xpad->odata_dma);
 return error;
}
