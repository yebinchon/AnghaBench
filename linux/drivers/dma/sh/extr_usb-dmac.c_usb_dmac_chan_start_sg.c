
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_dmac_sg {int mem_addr; int size; } ;
struct usb_dmac_desc {scalar_t__ direction; struct usb_dmac_sg* sg; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_6__ {TYPE_2__ chan; } ;
struct usb_dmac_chan {int index; TYPE_3__ vc; struct usb_dmac_desc* desc; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;


 int DIV_ROUND_UP (int ,int ) ;
 scalar_t__ DMA_DEV_TO_MEM ;
 int USB_DMACHCR ;
 int USB_DMACHCR_DE ;
 int USB_DMACHCR_IE ;
 int USB_DMACHCR_NULLE ;
 int USB_DMAC_CHCR_TS ;
 int USB_DMAC_XFER_SIZE ;
 int USB_DMADAR ;
 int USB_DMASAR ;
 int USB_DMATCR ;
 int USB_DMATEND ;
 int WARN_ON_ONCE (int ) ;
 int dev_dbg (int ,char*,int ,struct usb_dmac_sg*,int ,int*,int*) ;
 int usb_dmac_calc_tend (int ) ;
 int usb_dmac_chan_is_busy (struct usb_dmac_chan*) ;
 int usb_dmac_chan_write (struct usb_dmac_chan*,int ,int) ;

__attribute__((used)) static void usb_dmac_chan_start_sg(struct usb_dmac_chan *chan,
       unsigned int index)
{
 struct usb_dmac_desc *desc = chan->desc;
 struct usb_dmac_sg *sg = desc->sg + index;
 dma_addr_t src_addr = 0, dst_addr = 0;

 WARN_ON_ONCE(usb_dmac_chan_is_busy(chan));

 if (desc->direction == DMA_DEV_TO_MEM)
  dst_addr = sg->mem_addr;
 else
  src_addr = sg->mem_addr;

 dev_dbg(chan->vc.chan.device->dev,
  "chan%u: queue sg %p: %u@%pad -> %pad\n",
  chan->index, sg, sg->size, &src_addr, &dst_addr);

 usb_dmac_chan_write(chan, USB_DMASAR, src_addr & 0xffffffff);
 usb_dmac_chan_write(chan, USB_DMADAR, dst_addr & 0xffffffff);
 usb_dmac_chan_write(chan, USB_DMATCR,
       DIV_ROUND_UP(sg->size, USB_DMAC_XFER_SIZE));
 usb_dmac_chan_write(chan, USB_DMATEND, usb_dmac_calc_tend(sg->size));

 usb_dmac_chan_write(chan, USB_DMACHCR, USB_DMAC_CHCR_TS |
   USB_DMACHCR_NULLE | USB_DMACHCR_IE | USB_DMACHCR_DE);
}
