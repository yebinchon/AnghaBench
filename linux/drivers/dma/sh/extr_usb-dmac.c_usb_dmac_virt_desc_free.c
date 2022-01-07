
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chan; } ;
struct virt_dma_desc {TYPE_1__ tx; } ;
struct usb_dmac_desc {int dummy; } ;
struct usb_dmac_chan {int dummy; } ;


 struct usb_dmac_chan* to_usb_dmac_chan (int ) ;
 struct usb_dmac_desc* to_usb_dmac_desc (struct virt_dma_desc*) ;
 int usb_dmac_desc_put (struct usb_dmac_chan*,struct usb_dmac_desc*) ;

__attribute__((used)) static void usb_dmac_virt_desc_free(struct virt_dma_desc *vd)
{
 struct usb_dmac_desc *desc = to_usb_dmac_desc(vd);
 struct usb_dmac_chan *chan = to_usb_dmac_chan(vd->tx.chan);

 usb_dmac_desc_put(chan, desc);
}
