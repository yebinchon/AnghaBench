
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xilinx_dma_chan {int err; int idle; scalar_t__ desc_submitcount; int dev; } ;


 int ETIMEDOUT ;
 int XILINX_DMA_DMACR_RESET ;
 int XILINX_DMA_LOOP_COUNT ;
 int XILINX_DMA_REG_DMACR ;
 int XILINX_DMA_REG_DMASR ;
 int dev_err (int ,char*,int ,int ) ;
 int dma_ctrl_read (struct xilinx_dma_chan*,int ) ;
 int dma_ctrl_set (struct xilinx_dma_chan*,int ,int) ;
 int xilinx_dma_poll_timeout (struct xilinx_dma_chan*,int ,int,int,int ,int ) ;

__attribute__((used)) static int xilinx_dma_reset(struct xilinx_dma_chan *chan)
{
 int err;
 u32 tmp;

 dma_ctrl_set(chan, XILINX_DMA_REG_DMACR, XILINX_DMA_DMACR_RESET);


 err = xilinx_dma_poll_timeout(chan, XILINX_DMA_REG_DMACR, tmp,
          !(tmp & XILINX_DMA_DMACR_RESET), 0,
          XILINX_DMA_LOOP_COUNT);

 if (err) {
  dev_err(chan->dev, "reset timeout, cr %x, sr %x\n",
   dma_ctrl_read(chan, XILINX_DMA_REG_DMACR),
   dma_ctrl_read(chan, XILINX_DMA_REG_DMASR));
  return -ETIMEDOUT;
 }

 chan->err = 0;
 chan->idle = 1;
 chan->desc_submitcount = 0;

 return err;
}
