
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virt_dma_desc {int tx; } ;
struct TYPE_2__ {int lock; } ;
struct sun6i_vchan {TYPE_1__ vc; struct sun6i_pchan* phy; } ;
struct sun6i_pchan {int desc; } ;
struct sun6i_dma_lli {scalar_t__ len; struct sun6i_dma_lli* v_lli_next; } ;
struct sun6i_desc {struct sun6i_dma_lli* v_lli; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int DMA_COMPLETE ;
 int dma_cookie_status (struct dma_chan*,int ,struct dma_tx_state*) ;
 int dma_set_residue (struct dma_tx_state*,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 size_t sun6i_get_chan_size (struct sun6i_pchan*) ;
 struct sun6i_desc* to_sun6i_desc (int *) ;
 struct sun6i_vchan* to_sun6i_vchan (struct dma_chan*) ;
 struct virt_dma_desc* vchan_find_desc (TYPE_1__*,int ) ;

__attribute__((used)) static enum dma_status sun6i_dma_tx_status(struct dma_chan *chan,
        dma_cookie_t cookie,
        struct dma_tx_state *state)
{
 struct sun6i_vchan *vchan = to_sun6i_vchan(chan);
 struct sun6i_pchan *pchan = vchan->phy;
 struct sun6i_dma_lli *lli;
 struct virt_dma_desc *vd;
 struct sun6i_desc *txd;
 enum dma_status ret;
 unsigned long flags;
 size_t bytes = 0;

 ret = dma_cookie_status(chan, cookie, state);
 if (ret == DMA_COMPLETE || !state)
  return ret;

 spin_lock_irqsave(&vchan->vc.lock, flags);

 vd = vchan_find_desc(&vchan->vc, cookie);
 txd = to_sun6i_desc(&vd->tx);

 if (vd) {
  for (lli = txd->v_lli; lli != ((void*)0); lli = lli->v_lli_next)
   bytes += lli->len;
 } else if (!pchan || !pchan->desc) {
  bytes = 0;
 } else {
  bytes = sun6i_get_chan_size(pchan);
 }

 spin_unlock_irqrestore(&vchan->vc.lock, flags);

 dma_set_residue(state, bytes);

 return ret;
}
