
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fsldma_chan {int feature; } ;
struct fsl_dma_ld_hw {int next_ln_addr; } ;
typedef int dma_addr_t ;


 int CPU_TO_DMA (struct fsldma_chan*,int,int) ;
 int FSL_DMA_IP_83XX ;
 int FSL_DMA_IP_MASK ;
 int FSL_DMA_SNEN ;

__attribute__((used)) static void set_desc_next(struct fsldma_chan *chan,
     struct fsl_dma_ld_hw *hw, dma_addr_t next)
{
 u64 snoop_bits;

 snoop_bits = ((chan->feature & FSL_DMA_IP_MASK) == FSL_DMA_IP_83XX)
  ? FSL_DMA_SNEN : 0;
 hw->next_ln_addr = CPU_TO_DMA(chan, snoop_bits | next, 64);
}
