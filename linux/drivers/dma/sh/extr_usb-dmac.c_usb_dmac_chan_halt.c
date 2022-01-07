
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_dmac_chan {int dummy; } ;


 int USB_DMACHCR ;
 int USB_DMACHCR_DE ;
 int USB_DMACHCR_IE ;
 int USB_DMACHCR_TE ;
 int usb_dmac_chan_read (struct usb_dmac_chan*,int ) ;
 int usb_dmac_chan_write (struct usb_dmac_chan*,int ,int) ;
 int usb_dmac_soft_reset (struct usb_dmac_chan*) ;

__attribute__((used)) static void usb_dmac_chan_halt(struct usb_dmac_chan *chan)
{
 u32 chcr = usb_dmac_chan_read(chan, USB_DMACHCR);

 chcr &= ~(USB_DMACHCR_IE | USB_DMACHCR_TE | USB_DMACHCR_DE);
 usb_dmac_chan_write(chan, USB_DMACHCR, chcr);

 usb_dmac_soft_reset(chan);
}
