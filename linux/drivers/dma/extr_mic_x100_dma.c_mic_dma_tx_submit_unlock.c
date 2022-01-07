
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_dma_chan {int prep_lock; int head; int submitted; } ;
struct dma_async_tx_descriptor {int cookie; int chan; } ;
typedef int dma_cookie_t ;


 int dma_cookie_assign (struct dma_async_tx_descriptor*) ;
 int mic_dma_update_pending (struct mic_dma_chan*) ;
 int smp_wmb () ;
 int spin_unlock (int *) ;
 struct mic_dma_chan* to_mic_dma_chan (int ) ;

__attribute__((used)) static dma_cookie_t mic_dma_tx_submit_unlock(struct dma_async_tx_descriptor *tx)
{
 struct mic_dma_chan *mic_ch = to_mic_dma_chan(tx->chan);
 dma_cookie_t cookie;

 dma_cookie_assign(tx);
 cookie = tx->cookie;





 smp_wmb();
 mic_ch->submitted = mic_ch->head;
 spin_unlock(&mic_ch->prep_lock);
 mic_dma_update_pending(mic_ch);
 return cookie;
}
