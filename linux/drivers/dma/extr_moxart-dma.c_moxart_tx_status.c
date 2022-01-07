
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct virt_dma_desc {int tx; } ;
struct moxart_desc {int dummy; } ;
struct TYPE_8__ {int lock; } ;
struct moxart_chan {scalar_t__ error; TYPE_4__ vc; TYPE_3__* desc; } ;
struct dma_tx_state {int residue; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef scalar_t__ dma_cookie_t ;
struct TYPE_5__ {scalar_t__ cookie; } ;
struct TYPE_6__ {TYPE_1__ tx; } ;
struct TYPE_7__ {TYPE_2__ vd; } ;


 int DMA_ERROR ;
 int dma_cookie_status (struct dma_chan*,scalar_t__,struct dma_tx_state*) ;
 int moxart_dma_desc_size (struct moxart_desc*,int ) ;
 int moxart_dma_desc_size_in_flight (struct moxart_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct moxart_chan* to_moxart_dma_chan (struct dma_chan*) ;
 struct moxart_desc* to_moxart_dma_desc (int *) ;
 struct virt_dma_desc* vchan_find_desc (TYPE_4__*,scalar_t__) ;

__attribute__((used)) static enum dma_status moxart_tx_status(struct dma_chan *chan,
     dma_cookie_t cookie,
     struct dma_tx_state *txstate)
{
 struct moxart_chan *ch = to_moxart_dma_chan(chan);
 struct virt_dma_desc *vd;
 struct moxart_desc *d;
 enum dma_status ret;
 unsigned long flags;




 ret = dma_cookie_status(chan, cookie, txstate);

 spin_lock_irqsave(&ch->vc.lock, flags);
 vd = vchan_find_desc(&ch->vc, cookie);
 if (vd) {
  d = to_moxart_dma_desc(&vd->tx);
  txstate->residue = moxart_dma_desc_size(d, 0);
 } else if (ch->desc && ch->desc->vd.tx.cookie == cookie) {
  txstate->residue = moxart_dma_desc_size_in_flight(ch);
 }
 spin_unlock_irqrestore(&ch->vc.lock, flags);

 if (ch->error)
  return DMA_ERROR;

 return ret;
}
