
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_dmac_sg {int mem_addr; unsigned int size; } ;
struct usb_dmac_desc {scalar_t__ direction; struct usb_dmac_sg* sg; } ;
struct usb_dmac_chan {int dummy; } ;


 scalar_t__ DMA_DEV_TO_MEM ;
 int USB_DMADAR ;
 int USB_DMASAR ;
 int usb_dmac_chan_read (struct usb_dmac_chan*,int ) ;

__attribute__((used)) static unsigned int usb_dmac_get_current_residue(struct usb_dmac_chan *chan,
       struct usb_dmac_desc *desc,
       int sg_index)
{
 struct usb_dmac_sg *sg = desc->sg + sg_index;
 u32 mem_addr = sg->mem_addr & 0xffffffff;
 unsigned int residue = sg->size;





 if (desc->direction == DMA_DEV_TO_MEM)
  residue -= usb_dmac_chan_read(chan, USB_DMADAR) - mem_addr;
 else
  residue -= usb_dmac_chan_read(chan, USB_DMASAR) - mem_addr;

 return residue;
}
