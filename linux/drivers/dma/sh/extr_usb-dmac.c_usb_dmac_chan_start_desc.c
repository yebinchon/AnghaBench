
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virt_dma_desc {int node; } ;
struct usb_dmac_chan {TYPE_1__* desc; int vc; } ;
struct TYPE_2__ {scalar_t__ sg_index; } ;


 int list_del (int *) ;
 TYPE_1__* to_usb_dmac_desc (struct virt_dma_desc*) ;
 int usb_dmac_chan_start_sg (struct usb_dmac_chan*,int ) ;
 struct virt_dma_desc* vchan_next_desc (int *) ;

__attribute__((used)) static void usb_dmac_chan_start_desc(struct usb_dmac_chan *chan)
{
 struct virt_dma_desc *vd;

 vd = vchan_next_desc(&chan->vc);
 if (!vd) {
  chan->desc = ((void*)0);
  return;
 }






 list_del(&vd->node);

 chan->desc = to_usb_dmac_desc(vd);
 chan->desc->sg_index = 0;
 usb_dmac_chan_start_sg(chan, 0);
}
