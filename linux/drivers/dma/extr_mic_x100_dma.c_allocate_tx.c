
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct mic_dma_chan {int api_ch; struct dma_async_tx_descriptor* tx_array; int head; } ;
struct dma_async_tx_descriptor {int tx_submit; } ;


 int dma_async_tx_descriptor_init (struct dma_async_tx_descriptor*,int *) ;
 size_t mic_dma_hw_ring_dec (int ) ;
 int mic_dma_tx_submit_unlock ;

__attribute__((used)) static inline struct dma_async_tx_descriptor *
allocate_tx(struct mic_dma_chan *ch)
{
 u32 idx = mic_dma_hw_ring_dec(ch->head);
 struct dma_async_tx_descriptor *tx = &ch->tx_array[idx];

 dma_async_tx_descriptor_init(tx, &ch->api_ch);
 tx->tx_submit = mic_dma_tx_submit_unlock;
 return tx;
}
