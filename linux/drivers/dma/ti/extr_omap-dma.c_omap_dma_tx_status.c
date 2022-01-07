
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct virt_dma_desc {int tx; } ;
struct TYPE_4__ {scalar_t__ cookie; } ;
struct TYPE_6__ {TYPE_1__ tx; } ;
struct omap_desc {scalar_t__ dir; TYPE_3__ vd; scalar_t__ polled; } ;
struct TYPE_5__ {int lock; } ;
struct omap_chan {TYPE_2__ vc; scalar_t__ running; scalar_t__ paused; struct omap_desc* desc; } ;
struct dma_tx_state {int residue; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef scalar_t__ dma_cookie_t ;
typedef scalar_t__ dma_addr_t ;


 int CCR ;
 int CCR_ENABLE ;
 int DMA_COMPLETE ;
 scalar_t__ DMA_DEV_TO_MEM ;
 int DMA_IN_PROGRESS ;
 scalar_t__ DMA_MEM_TO_DEV ;
 scalar_t__ DMA_MEM_TO_MEM ;
 int DMA_PAUSED ;
 int dma_cookie_status (struct dma_chan*,scalar_t__,struct dma_tx_state*) ;
 int omap_dma_chan_read (struct omap_chan*,int ) ;
 int omap_dma_desc_size (int ) ;
 int omap_dma_desc_size_pos (struct omap_desc*,scalar_t__) ;
 scalar_t__ omap_dma_get_dst_pos (struct omap_chan*) ;
 scalar_t__ omap_dma_get_src_pos (struct omap_chan*) ;
 int omap_dma_start_desc (struct omap_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct omap_chan* to_omap_dma_chan (struct dma_chan*) ;
 int to_omap_dma_desc (int *) ;
 int vchan_cookie_complete (TYPE_3__*) ;
 struct virt_dma_desc* vchan_find_desc (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static enum dma_status omap_dma_tx_status(struct dma_chan *chan,
 dma_cookie_t cookie, struct dma_tx_state *txstate)
{
 struct omap_chan *c = to_omap_dma_chan(chan);
 enum dma_status ret;
 unsigned long flags;
 struct omap_desc *d = ((void*)0);

 ret = dma_cookie_status(chan, cookie, txstate);
 if (ret == DMA_COMPLETE)
  return ret;

 spin_lock_irqsave(&c->vc.lock, flags);
 if (c->desc && c->desc->vd.tx.cookie == cookie)
  d = c->desc;

 if (!txstate)
  goto out;

 if (d) {
  dma_addr_t pos;

  if (d->dir == DMA_MEM_TO_DEV)
   pos = omap_dma_get_src_pos(c);
  else if (d->dir == DMA_DEV_TO_MEM || d->dir == DMA_MEM_TO_MEM)
   pos = omap_dma_get_dst_pos(c);
  else
   pos = 0;

  txstate->residue = omap_dma_desc_size_pos(d, pos);
 } else {
  struct virt_dma_desc *vd = vchan_find_desc(&c->vc, cookie);

  if (vd)
   txstate->residue = omap_dma_desc_size(
      to_omap_dma_desc(&vd->tx));
  else
   txstate->residue = 0;
 }

out:
 if (ret == DMA_IN_PROGRESS && c->paused) {
  ret = DMA_PAUSED;
 } else if (d && d->polled && c->running) {
  uint32_t ccr = omap_dma_chan_read(c, CCR);




  if (!(ccr & CCR_ENABLE)) {
   ret = DMA_COMPLETE;
   omap_dma_start_desc(c);
   vchan_cookie_complete(&d->vd);
  }
 }

 spin_unlock_irqrestore(&c->vc.lock, flags);

 return ret;
}
