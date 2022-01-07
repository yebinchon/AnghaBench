
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xilinx_dma_chan {int err; int idle; int tasklet; int lock; int (* start_transfer ) (struct xilinx_dma_chan*) ;int dev; int flush_on_fsync; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int XILINX_DMA_DMASR_ALL_ERR_MASK ;
 int XILINX_DMA_DMASR_DLY_CNT_IRQ ;
 int XILINX_DMA_DMASR_ERR_IRQ ;
 int XILINX_DMA_DMASR_ERR_RECOVER_MASK ;
 int XILINX_DMA_DMASR_FRM_CNT_IRQ ;
 int XILINX_DMA_DMAXR_ALL_IRQ_MASK ;
 int XILINX_DMA_REG_CURDESC ;
 int XILINX_DMA_REG_DMASR ;
 int XILINX_DMA_REG_TAILDESC ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,struct xilinx_dma_chan*,int,int,int) ;
 int dma_ctrl_read (struct xilinx_dma_chan*,int ) ;
 int dma_ctrl_write (struct xilinx_dma_chan*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct xilinx_dma_chan*) ;
 int tasklet_schedule (int *) ;
 int xilinx_dma_complete_descriptor (struct xilinx_dma_chan*) ;

__attribute__((used)) static irqreturn_t xilinx_dma_irq_handler(int irq, void *data)
{
 struct xilinx_dma_chan *chan = data;
 u32 status;


 status = dma_ctrl_read(chan, XILINX_DMA_REG_DMASR);
 if (!(status & XILINX_DMA_DMAXR_ALL_IRQ_MASK))
  return IRQ_NONE;

 dma_ctrl_write(chan, XILINX_DMA_REG_DMASR,
   status & XILINX_DMA_DMAXR_ALL_IRQ_MASK);

 if (status & XILINX_DMA_DMASR_ERR_IRQ) {







  u32 errors = status & XILINX_DMA_DMASR_ALL_ERR_MASK;

  dma_ctrl_write(chan, XILINX_DMA_REG_DMASR,
    errors & XILINX_DMA_DMASR_ERR_RECOVER_MASK);

  if (!chan->flush_on_fsync ||
      (errors & ~XILINX_DMA_DMASR_ERR_RECOVER_MASK)) {
   dev_err(chan->dev,
    "Channel %p has errors %x, cdr %x tdr %x\n",
    chan, errors,
    dma_ctrl_read(chan, XILINX_DMA_REG_CURDESC),
    dma_ctrl_read(chan, XILINX_DMA_REG_TAILDESC));
   chan->err = 1;
  }
 }

 if (status & XILINX_DMA_DMASR_DLY_CNT_IRQ) {




  dev_dbg(chan->dev, "Inter-packet latency too long\n");
 }

 if (status & XILINX_DMA_DMASR_FRM_CNT_IRQ) {
  spin_lock(&chan->lock);
  xilinx_dma_complete_descriptor(chan);
  chan->idle = 1;
  chan->start_transfer(chan);
  spin_unlock(&chan->lock);
 }

 tasklet_schedule(&chan->tasklet);
 return IRQ_HANDLED;
}
