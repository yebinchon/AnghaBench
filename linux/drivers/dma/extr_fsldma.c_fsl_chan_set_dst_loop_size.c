
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsldma_chan {int dummy; } ;


 int FSL_DMA_MR_DAHE ;
 int FSL_DMA_MR_DAHTS_MASK ;
 int __ilog2 (int) ;
 int get_mr (struct fsldma_chan*) ;
 int set_mr (struct fsldma_chan*,int) ;

__attribute__((used)) static void fsl_chan_set_dst_loop_size(struct fsldma_chan *chan, int size)
{
 u32 mode;

 mode = get_mr(chan);

 switch (size) {
 case 0:
  mode &= ~FSL_DMA_MR_DAHE;
  break;
 case 1:
 case 2:
 case 4:
 case 8:
  mode &= ~FSL_DMA_MR_DAHTS_MASK;
  mode |= FSL_DMA_MR_DAHE | (__ilog2(size) << 16);
  break;
 }

 set_mr(chan, mode);
}
