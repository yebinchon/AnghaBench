
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct mic_dma_chan {size_t last_tail; int cleanup_lock; struct dma_async_tx_descriptor* tx_array; } ;
struct dma_async_tx_descriptor {int * callback; scalar_t__ cookie; } ;


 int dma_cookie_complete (struct dma_async_tx_descriptor*) ;
 int dmaengine_desc_get_callback_invoke (struct dma_async_tx_descriptor*,int *) ;
 size_t mic_dma_hw_ring_inc (size_t) ;
 size_t mic_dma_read_cmp_cnt (struct mic_dma_chan*) ;
 int smp_mb () ;
 int smp_rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void mic_dma_cleanup(struct mic_dma_chan *ch)
{
 struct dma_async_tx_descriptor *tx;
 u32 tail;
 u32 last_tail;

 spin_lock(&ch->cleanup_lock);
 tail = mic_dma_read_cmp_cnt(ch);





 smp_rmb();
 for (last_tail = ch->last_tail; tail != last_tail;) {
  tx = &ch->tx_array[last_tail];
  if (tx->cookie) {
   dma_cookie_complete(tx);
   dmaengine_desc_get_callback_invoke(tx, ((void*)0));
   tx->callback = ((void*)0);
  }
  last_tail = mic_dma_hw_ring_inc(last_tail);
 }

 smp_mb();
 ch->last_tail = last_tail;
 spin_unlock(&ch->cleanup_lock);
}
