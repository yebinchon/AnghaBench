
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xilinx_dma_chan {int err; int dev; } ;


 int XILINX_DMA_DMACR_RUNSTOP ;
 int XILINX_DMA_DMASR_HALTED ;
 int XILINX_DMA_LOOP_COUNT ;
 int XILINX_DMA_REG_DMACR ;
 int XILINX_DMA_REG_DMASR ;
 int dev_err (int ,char*,struct xilinx_dma_chan*,int ) ;
 int dma_ctrl_read (struct xilinx_dma_chan*,int ) ;
 int dma_ctrl_set (struct xilinx_dma_chan*,int ,int ) ;
 int xilinx_dma_poll_timeout (struct xilinx_dma_chan*,int ,int,int,int ,int ) ;

__attribute__((used)) static void xilinx_dma_start(struct xilinx_dma_chan *chan)
{
 int err;
 u32 val;

 dma_ctrl_set(chan, XILINX_DMA_REG_DMACR, XILINX_DMA_DMACR_RUNSTOP);


 err = xilinx_dma_poll_timeout(chan, XILINX_DMA_REG_DMASR, val,
          !(val & XILINX_DMA_DMASR_HALTED), 0,
          XILINX_DMA_LOOP_COUNT);

 if (err) {
  dev_err(chan->dev, "Cannot start channel %p: %x\n",
   chan, dma_ctrl_read(chan, XILINX_DMA_REG_DMASR));

  chan->err = 1;
 }
}
