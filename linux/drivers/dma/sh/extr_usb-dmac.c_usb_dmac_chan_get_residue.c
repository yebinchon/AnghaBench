
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct virt_dma_desc {int dummy; } ;
struct usb_dmac_desc {int sg_index; int sg_len; TYPE_1__* sg; } ;
struct usb_dmac_chan {int vc; struct usb_dmac_desc* desc; } ;
typedef int dma_cookie_t ;
struct TYPE_2__ {scalar_t__ size; } ;


 struct usb_dmac_desc* to_usb_dmac_desc (struct virt_dma_desc*) ;
 scalar_t__ usb_dmac_get_current_residue (struct usb_dmac_chan*,struct usb_dmac_desc*,int) ;
 struct virt_dma_desc* vchan_find_desc (int *,int ) ;

__attribute__((used)) static u32 usb_dmac_chan_get_residue(struct usb_dmac_chan *chan,
         dma_cookie_t cookie)
{
 u32 residue = 0;
 struct virt_dma_desc *vd;
 struct usb_dmac_desc *desc = chan->desc;
 int i;

 if (!desc) {
  vd = vchan_find_desc(&chan->vc, cookie);
  if (!vd)
   return 0;
  desc = to_usb_dmac_desc(vd);
 }


 for (i = desc->sg_index + 1; i < desc->sg_len; i++)
  residue += desc->sg[i].size;


 residue += usb_dmac_get_current_residue(chan, desc, desc->sg_index);

 return residue;
}
