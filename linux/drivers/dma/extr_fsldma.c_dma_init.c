
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsldma_chan {int feature; } ;




 int FSL_DMA_IP_MASK ;
 int FSL_DMA_MR_BWC ;
 int FSL_DMA_MR_EIE ;
 int FSL_DMA_MR_EOLNIE ;
 int FSL_DMA_MR_EOTIE ;
 int FSL_DMA_MR_PRC_RM ;
 int set_mr (struct fsldma_chan*,int) ;

__attribute__((used)) static void dma_init(struct fsldma_chan *chan)
{

 set_mr(chan, 0);

 switch (chan->feature & FSL_DMA_IP_MASK) {
 case 128:





  set_mr(chan, FSL_DMA_MR_BWC | FSL_DMA_MR_EIE
   | FSL_DMA_MR_EOLNIE);
  break;
 case 129:




  set_mr(chan, FSL_DMA_MR_EOTIE | FSL_DMA_MR_PRC_RM);
  break;
 }
}
