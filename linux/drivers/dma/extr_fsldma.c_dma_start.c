
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsldma_chan {int feature; } ;


 int FSL_DMA_CHAN_PAUSE_EXT ;
 int FSL_DMA_CHAN_START_EXT ;
 int FSL_DMA_MR_CS ;
 int FSL_DMA_MR_EMP_EN ;
 int FSL_DMA_MR_EMS_EN ;
 int get_mr (struct fsldma_chan*) ;
 int set_bcr (struct fsldma_chan*,int ) ;
 int set_mr (struct fsldma_chan*,int ) ;

__attribute__((used)) static void dma_start(struct fsldma_chan *chan)
{
 u32 mode;

 mode = get_mr(chan);

 if (chan->feature & FSL_DMA_CHAN_PAUSE_EXT) {
  set_bcr(chan, 0);
  mode |= FSL_DMA_MR_EMP_EN;
 } else {
  mode &= ~FSL_DMA_MR_EMP_EN;
 }

 if (chan->feature & FSL_DMA_CHAN_START_EXT) {
  mode |= FSL_DMA_MR_EMS_EN;
 } else {
  mode &= ~FSL_DMA_MR_EMS_EN;
  mode |= FSL_DMA_MR_CS;
 }

 set_mr(chan, mode);
}
