
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device_node; } ;
struct xilinx_dma_chan {scalar_t__ irq; TYPE_1__ common; int tasklet; } ;


 int XILINX_DMA_DMAXR_ALL_IRQ_MASK ;
 int XILINX_DMA_REG_DMACR ;
 int dma_ctrl_clr (struct xilinx_dma_chan*,int ,int ) ;
 int free_irq (scalar_t__,struct xilinx_dma_chan*) ;
 int list_del (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void xilinx_dma_chan_remove(struct xilinx_dma_chan *chan)
{

 dma_ctrl_clr(chan, XILINX_DMA_REG_DMACR,
        XILINX_DMA_DMAXR_ALL_IRQ_MASK);

 if (chan->irq > 0)
  free_irq(chan->irq, chan);

 tasklet_kill(&chan->tasklet);

 list_del(&chan->common.device_node);
}
