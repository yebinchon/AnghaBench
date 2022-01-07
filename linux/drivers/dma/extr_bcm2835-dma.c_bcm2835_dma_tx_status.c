
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct virt_dma_desc {int tx; } ;
struct dma_tx_state {int residue; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {scalar_t__ cookie; } ;
struct TYPE_5__ {TYPE_1__ tx; } ;
struct bcm2835_desc {scalar_t__ dir; TYPE_2__ vd; } ;
struct TYPE_6__ {int lock; } ;
struct bcm2835_chan {TYPE_3__ vc; scalar_t__ chan_base; struct bcm2835_desc* desc; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef scalar_t__ dma_cookie_t ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ BCM2835_DMA_DEST_AD ;
 scalar_t__ BCM2835_DMA_SOURCE_AD ;
 int DMA_COMPLETE ;
 scalar_t__ DMA_DEV_TO_MEM ;
 scalar_t__ DMA_MEM_TO_DEV ;
 int bcm2835_dma_desc_size (int ) ;
 int bcm2835_dma_desc_size_pos (struct bcm2835_desc*,scalar_t__) ;
 int dma_cookie_status (struct dma_chan*,scalar_t__,struct dma_tx_state*) ;
 scalar_t__ readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct bcm2835_chan* to_bcm2835_dma_chan (struct dma_chan*) ;
 int to_bcm2835_dma_desc (int *) ;
 struct virt_dma_desc* vchan_find_desc (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static enum dma_status bcm2835_dma_tx_status(struct dma_chan *chan,
 dma_cookie_t cookie, struct dma_tx_state *txstate)
{
 struct bcm2835_chan *c = to_bcm2835_dma_chan(chan);
 struct virt_dma_desc *vd;
 enum dma_status ret;
 unsigned long flags;

 ret = dma_cookie_status(chan, cookie, txstate);
 if (ret == DMA_COMPLETE || !txstate)
  return ret;

 spin_lock_irqsave(&c->vc.lock, flags);
 vd = vchan_find_desc(&c->vc, cookie);
 if (vd) {
  txstate->residue =
   bcm2835_dma_desc_size(to_bcm2835_dma_desc(&vd->tx));
 } else if (c->desc && c->desc->vd.tx.cookie == cookie) {
  struct bcm2835_desc *d = c->desc;
  dma_addr_t pos;

  if (d->dir == DMA_MEM_TO_DEV)
   pos = readl(c->chan_base + BCM2835_DMA_SOURCE_AD);
  else if (d->dir == DMA_DEV_TO_MEM)
   pos = readl(c->chan_base + BCM2835_DMA_DEST_AD);
  else
   pos = 0;

  txstate->residue = bcm2835_dma_desc_size_pos(d, pos);
 } else {
  txstate->residue = 0;
 }

 spin_unlock_irqrestore(&c->vc.lock, flags);

 return ret;
}
