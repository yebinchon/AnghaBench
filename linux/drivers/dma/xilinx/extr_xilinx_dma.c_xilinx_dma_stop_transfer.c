
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xilinx_dma_chan {int dummy; } ;


 int XILINX_DMA_DMACR_RUNSTOP ;
 int XILINX_DMA_DMASR_HALTED ;
 int XILINX_DMA_LOOP_COUNT ;
 int XILINX_DMA_REG_DMACR ;
 int XILINX_DMA_REG_DMASR ;
 int dma_ctrl_clr (struct xilinx_dma_chan*,int ,int ) ;
 int xilinx_dma_poll_timeout (struct xilinx_dma_chan*,int ,int,int,int ,int ) ;

__attribute__((used)) static int xilinx_dma_stop_transfer(struct xilinx_dma_chan *chan)
{
 u32 val;

 dma_ctrl_clr(chan, XILINX_DMA_REG_DMACR, XILINX_DMA_DMACR_RUNSTOP);


 return xilinx_dma_poll_timeout(chan, XILINX_DMA_REG_DMASR, val,
           val & XILINX_DMA_DMASR_HALTED, 0,
           XILINX_DMA_LOOP_COUNT);
}
