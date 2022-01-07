
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {int device; } ;
struct TYPE_2__ {struct dma_chan chan; } ;
struct usb_dmac_chan {TYPE_1__ vc; } ;
struct usb_dmac {int n_channels; } ;


 int USB_DMAOR ;
 int USB_DMASWR ;
 int USB_DMASWR_SWR ;
 struct usb_dmac* to_usb_dmac (int ) ;
 int udelay (int) ;
 scalar_t__ usb_dmac_chan_is_busy (struct usb_dmac_chan*) ;
 int usb_dmac_write (struct usb_dmac*,int ,int) ;

__attribute__((used)) static void usb_dmac_soft_reset(struct usb_dmac_chan *uchan)
{
 struct dma_chan *chan = &uchan->vc.chan;
 struct usb_dmac *dmac = to_usb_dmac(chan->device);
 int i;


 for (i = 0; i < dmac->n_channels; ++i) {
  if (usb_dmac_chan_is_busy(uchan))
   return;
 }

 usb_dmac_write(dmac, USB_DMAOR, 0);
 usb_dmac_write(dmac, USB_DMASWR, USB_DMASWR_SWR);
 udelay(100);
 usb_dmac_write(dmac, USB_DMASWR, 0);
 usb_dmac_write(dmac, USB_DMAOR, 1);
}
