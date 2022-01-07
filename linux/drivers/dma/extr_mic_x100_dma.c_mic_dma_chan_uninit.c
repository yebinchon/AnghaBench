
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_dma_chan {int dummy; } ;


 int mic_dma_chan_destroy (struct mic_dma_chan*) ;
 int mic_dma_cleanup (struct mic_dma_chan*) ;
 int mic_dma_free_desc_ring (struct mic_dma_chan*) ;
 int mic_dma_free_status_dest (struct mic_dma_chan*) ;

__attribute__((used)) static inline void mic_dma_chan_uninit(struct mic_dma_chan *ch)
{
 mic_dma_chan_destroy(ch);
 mic_dma_cleanup(ch);
 mic_dma_free_status_dest(ch);
 mic_dma_free_desc_ring(ch);
}
