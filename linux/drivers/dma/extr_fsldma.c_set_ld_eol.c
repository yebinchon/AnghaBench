
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct fsldma_chan {int feature; } ;
struct TYPE_2__ {int next_ln_addr; } ;
struct fsl_desc_sw {TYPE_1__ hw; } ;


 int CPU_TO_DMA (struct fsldma_chan*,int,int) ;
 int DMA_TO_CPU (struct fsldma_chan*,int ,int) ;
 int FSL_DMA_EOL ;
 int FSL_DMA_IP_83XX ;
 int FSL_DMA_IP_MASK ;
 int FSL_DMA_SNEN ;

__attribute__((used)) static void set_ld_eol(struct fsldma_chan *chan, struct fsl_desc_sw *desc)
{
 u64 snoop_bits;

 snoop_bits = ((chan->feature & FSL_DMA_IP_MASK) == FSL_DMA_IP_83XX)
  ? FSL_DMA_SNEN : 0;

 desc->hw.next_ln_addr = CPU_TO_DMA(chan,
  DMA_TO_CPU(chan, desc->hw.next_ln_addr, 64) | FSL_DMA_EOL
   | snoop_bits, 64);
}
