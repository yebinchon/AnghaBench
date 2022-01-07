
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_dma_desc_sw {int tx_list; } ;
struct xgene_dma_chan {int lock; int ld_pending; } ;
struct dma_async_tx_descriptor {int chan; } ;
typedef int dma_cookie_t ;


 int EINVAL ;
 int dma_cookie_assign (struct dma_async_tx_descriptor*) ;
 int list_splice_tail_init (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct xgene_dma_chan* to_dma_chan (int ) ;
 struct xgene_dma_desc_sw* to_dma_desc_sw (struct dma_async_tx_descriptor*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static dma_cookie_t xgene_dma_tx_submit(struct dma_async_tx_descriptor *tx)
{
 struct xgene_dma_desc_sw *desc;
 struct xgene_dma_chan *chan;
 dma_cookie_t cookie;

 if (unlikely(!tx))
  return -EINVAL;

 chan = to_dma_chan(tx->chan);
 desc = to_dma_desc_sw(tx);

 spin_lock_bh(&chan->lock);

 cookie = dma_cookie_assign(tx);


 list_splice_tail_init(&desc->tx_list, &chan->ld_pending);

 spin_unlock_bh(&chan->lock);

 return cookie;
}
