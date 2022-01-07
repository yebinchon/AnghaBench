
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct mv_xor_v2_device {int irq_tasklet; scalar_t__ dma_base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ MV_XOR_V2_DMA_DESQ_DONE_OFF ;
 unsigned int MV_XOR_V2_DMA_DESQ_DONE_PENDING_MASK ;
 unsigned int MV_XOR_V2_DMA_DESQ_DONE_PENDING_SHIFT ;
 unsigned int readl (scalar_t__) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t mv_xor_v2_interrupt_handler(int irq, void *data)
{
 struct mv_xor_v2_device *xor_dev = data;
 unsigned int ndescs;
 u32 reg;

 reg = readl(xor_dev->dma_base + MV_XOR_V2_DMA_DESQ_DONE_OFF);

 ndescs = ((reg >> MV_XOR_V2_DMA_DESQ_DONE_PENDING_SHIFT) &
    MV_XOR_V2_DMA_DESQ_DONE_PENDING_MASK);


 if (!ndescs)
  return IRQ_NONE;


 tasklet_schedule(&xor_dev->irq_tasklet);

 return IRQ_HANDLED;
}
