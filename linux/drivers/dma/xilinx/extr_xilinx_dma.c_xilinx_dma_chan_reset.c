
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_dma_chan {int dummy; } ;


 int XILINX_DMA_DMAXR_ALL_IRQ_MASK ;
 int XILINX_DMA_REG_DMACR ;
 int dma_ctrl_set (struct xilinx_dma_chan*,int ,int ) ;
 int xilinx_dma_reset (struct xilinx_dma_chan*) ;

__attribute__((used)) static int xilinx_dma_chan_reset(struct xilinx_dma_chan *chan)
{
 int err;


 err = xilinx_dma_reset(chan);
 if (err)
  return err;


 dma_ctrl_set(chan, XILINX_DMA_REG_DMACR,
        XILINX_DMA_DMAXR_ALL_IRQ_MASK);

 return 0;
}
