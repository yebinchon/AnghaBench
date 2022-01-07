
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virt_dma_desc {int tx; int node; } ;
struct bcm2835_desc {TYPE_1__* cb_list; } ;
struct bcm2835_chan {scalar_t__ chan_base; struct bcm2835_desc* desc; int vc; } ;
struct TYPE_2__ {int paddr; } ;


 int BCM2835_DMA_ACTIVE ;
 scalar_t__ BCM2835_DMA_ADDR ;
 scalar_t__ BCM2835_DMA_CS ;
 int list_del (int *) ;
 struct bcm2835_desc* to_bcm2835_dma_desc (int *) ;
 struct virt_dma_desc* vchan_next_desc (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void bcm2835_dma_start_desc(struct bcm2835_chan *c)
{
 struct virt_dma_desc *vd = vchan_next_desc(&c->vc);
 struct bcm2835_desc *d;

 if (!vd) {
  c->desc = ((void*)0);
  return;
 }

 list_del(&vd->node);

 c->desc = d = to_bcm2835_dma_desc(&vd->tx);

 writel(d->cb_list[0].paddr, c->chan_base + BCM2835_DMA_ADDR);
 writel(BCM2835_DMA_ACTIVE, c->chan_base + BCM2835_DMA_CS);
}
