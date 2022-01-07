
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int lock; } ;
struct usb_dmac_chan {TYPE_1__ vc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int USB_DMACHCR ;
 int USB_DMACHCR_DE ;
 int USB_DMACHCR_FTE ;
 int USB_DMACHCR_NULL ;
 int USB_DMACHCR_SP ;
 int USB_DMACHCR_TE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb_dmac_chan_read (struct usb_dmac_chan*,int ) ;
 int usb_dmac_chan_write (struct usb_dmac_chan*,int ,int) ;
 int usb_dmac_isr_transfer_end (struct usb_dmac_chan*) ;

__attribute__((used)) static irqreturn_t usb_dmac_isr_channel(int irq, void *dev)
{
 struct usb_dmac_chan *chan = dev;
 irqreturn_t ret = IRQ_NONE;
 u32 mask = 0;
 u32 chcr;
 bool xfer_end = 0;

 spin_lock(&chan->vc.lock);

 chcr = usb_dmac_chan_read(chan, USB_DMACHCR);
 if (chcr & (USB_DMACHCR_TE | USB_DMACHCR_SP)) {
  mask |= USB_DMACHCR_DE | USB_DMACHCR_TE | USB_DMACHCR_SP;
  if (chcr & USB_DMACHCR_DE)
   xfer_end = 1;
  ret |= IRQ_HANDLED;
 }
 if (chcr & USB_DMACHCR_NULL) {

  mask |= USB_DMACHCR_NULL;
  chcr |= USB_DMACHCR_FTE;
  ret |= IRQ_HANDLED;
 }
 if (mask)
  usb_dmac_chan_write(chan, USB_DMACHCR, chcr & ~mask);

 if (xfer_end)
  usb_dmac_isr_transfer_end(chan);

 spin_unlock(&chan->vc.lock);

 return ret;
}
