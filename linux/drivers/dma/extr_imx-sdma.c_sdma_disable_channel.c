
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {scalar_t__ regs; } ;
struct sdma_channel {int channel; int status; struct sdma_engine* sdma; } ;
struct dma_chan {int dummy; } ;


 int BIT (int) ;
 int DMA_ERROR ;
 scalar_t__ SDMA_H_STATSTOP ;
 struct sdma_channel* to_sdma_chan (struct dma_chan*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int sdma_disable_channel(struct dma_chan *chan)
{
 struct sdma_channel *sdmac = to_sdma_chan(chan);
 struct sdma_engine *sdma = sdmac->sdma;
 int channel = sdmac->channel;

 writel_relaxed(BIT(channel), sdma->regs + SDMA_H_STATSTOP);
 sdmac->status = DMA_ERROR;

 return 0;
}
