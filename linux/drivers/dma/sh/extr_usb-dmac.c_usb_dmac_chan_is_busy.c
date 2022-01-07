
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_dmac_chan {int dummy; } ;


 int USB_DMACHCR ;
 int USB_DMACHCR_DE ;
 int USB_DMACHCR_TE ;
 int usb_dmac_chan_read (struct usb_dmac_chan*,int ) ;

__attribute__((used)) static bool usb_dmac_chan_is_busy(struct usb_dmac_chan *chan)
{
 u32 chcr = usb_dmac_chan_read(chan, USB_DMACHCR);

 return (chcr & (USB_DMACHCR_DE | USB_DMACHCR_TE)) == USB_DMACHCR_DE;
}
