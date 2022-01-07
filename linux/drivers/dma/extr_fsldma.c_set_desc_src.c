
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fsldma_chan {int feature; } ;
struct fsl_dma_ld_hw {int src_addr; } ;
typedef int dma_addr_t ;


 int CPU_TO_DMA (struct fsldma_chan*,int,int) ;
 int FSL_DMA_IP_85XX ;
 int FSL_DMA_IP_MASK ;
 scalar_t__ FSL_DMA_SATR_SREADTYPE_SNOOP_READ ;

__attribute__((used)) static void set_desc_src(struct fsldma_chan *chan,
    struct fsl_dma_ld_hw *hw, dma_addr_t src)
{
 u64 snoop_bits;

 snoop_bits = ((chan->feature & FSL_DMA_IP_MASK) == FSL_DMA_IP_85XX)
  ? ((u64)FSL_DMA_SATR_SREADTYPE_SNOOP_READ << 32) : 0;
 hw->src_addr = CPU_TO_DMA(chan, snoop_bits | src, 64);
}
