
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_dma_chan {int prep_lock; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;


 struct dma_async_tx_descriptor* allocate_tx (struct mic_dma_chan*) ;
 int mic_dma_do_dma (struct mic_dma_chan*,unsigned long,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct mic_dma_chan* to_mic_dma_chan (struct dma_chan*) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
mic_dma_prep_interrupt_lock(struct dma_chan *ch, unsigned long flags)
{
 struct mic_dma_chan *mic_ch = to_mic_dma_chan(ch);
 int ret;

 spin_lock(&mic_ch->prep_lock);
 ret = mic_dma_do_dma(mic_ch, flags, 0, 0, 0);
 if (!ret)
  return allocate_tx(mic_ch);
 spin_unlock(&mic_ch->prep_lock);
 return ((void*)0);
}
