
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;


 int MIC_DMA_DESC_RX_SIZE ;
 int mic_dma_chan_init (int ) ;
 int to_mic_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int mic_dma_alloc_chan_resources(struct dma_chan *ch)
{
 int ret = mic_dma_chan_init(to_mic_dma_chan(ch));
 if (ret)
  return ret;
 return MIC_DMA_DESC_RX_SIZE;
}
