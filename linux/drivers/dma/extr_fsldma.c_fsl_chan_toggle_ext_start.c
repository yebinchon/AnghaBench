
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsldma_chan {int feature; } ;


 int FSL_DMA_CHAN_START_EXT ;

__attribute__((used)) static void fsl_chan_toggle_ext_start(struct fsldma_chan *chan, int enable)
{
 if (enable)
  chan->feature |= FSL_DMA_CHAN_START_EXT;
 else
  chan->feature &= ~FSL_DMA_CHAN_START_EXT;
}
