
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsldma_chan {int dummy; } ;
struct fsl_dma_ld_hw {int count; } ;


 int CPU_TO_DMA (struct fsldma_chan*,int ,int) ;

__attribute__((used)) static void set_desc_cnt(struct fsldma_chan *chan,
    struct fsl_dma_ld_hw *hw, u32 count)
{
 hw->count = CPU_TO_DMA(chan, count, 32);
}
