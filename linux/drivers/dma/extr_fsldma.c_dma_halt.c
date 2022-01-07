
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsldma_chan {int feature; } ;


 int FSL_DMA_IP_85XX ;
 int FSL_DMA_IP_MASK ;
 int FSL_DMA_MR_CA ;
 int FSL_DMA_MR_CS ;
 int FSL_DMA_MR_EMS_EN ;
 int chan_err (struct fsldma_chan*,char*) ;
 scalar_t__ dma_is_idle (struct fsldma_chan*) ;
 int get_mr (struct fsldma_chan*) ;
 int set_mr (struct fsldma_chan*,int) ;
 int udelay (int) ;

__attribute__((used)) static void dma_halt(struct fsldma_chan *chan)
{
 u32 mode;
 int i;


 mode = get_mr(chan);






 if ((chan->feature & FSL_DMA_IP_MASK) == FSL_DMA_IP_85XX) {
  mode |= FSL_DMA_MR_CA;
  set_mr(chan, mode);

  mode &= ~FSL_DMA_MR_CA;
 }


 mode &= ~(FSL_DMA_MR_CS | FSL_DMA_MR_EMS_EN);
 set_mr(chan, mode);


 for (i = 0; i < 100; i++) {
  if (dma_is_idle(chan))
   return;

  udelay(10);
 }

 if (!dma_is_idle(chan))
  chan_err(chan, "DMA halt timeout!\n");
}
