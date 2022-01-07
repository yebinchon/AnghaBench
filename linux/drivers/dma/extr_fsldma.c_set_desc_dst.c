
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fsldma_chan {int feature; } ;
struct fsl_dma_ld_hw {int dst_addr; } ;
typedef int dma_addr_t ;


 int CPU_TO_DMA (struct fsldma_chan*,int,int) ;
 scalar_t__ FSL_DMA_DATR_DWRITETYPE_SNOOP_WRITE ;
 int FSL_DMA_IP_85XX ;
 int FSL_DMA_IP_MASK ;

__attribute__((used)) static void set_desc_dst(struct fsldma_chan *chan,
    struct fsl_dma_ld_hw *hw, dma_addr_t dst)
{
 u64 snoop_bits;

 snoop_bits = ((chan->feature & FSL_DMA_IP_MASK) == FSL_DMA_IP_85XX)
  ? ((u64)FSL_DMA_DATR_DWRITETYPE_SNOOP_WRITE << 32) : 0;
 hw->dst_addr = CPU_TO_DMA(chan, snoop_bits | dst, 64);
}
