
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_dma_chan {int head; } ;


 int mic_dma_hw_ring_inc (int ) ;

__attribute__((used)) static inline void mic_dma_hw_ring_inc_head(struct mic_dma_chan *ch)
{
 ch->head = mic_dma_hw_ring_inc(ch->head);
}
