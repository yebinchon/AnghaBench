
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_dma_chan {int dummy; } ;


 int mic_dma_chan_mask_intr (struct mic_dma_chan*) ;
 int mic_dma_disable_chan (struct mic_dma_chan*) ;

__attribute__((used)) static void mic_dma_chan_destroy(struct mic_dma_chan *ch)
{
 mic_dma_disable_chan(ch);
 mic_dma_chan_mask_intr(ch);
}
