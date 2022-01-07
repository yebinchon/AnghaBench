
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynq_fpga_priv {int dma_done; int dma_lock; scalar_t__ cur_sg; } ;
typedef int irqreturn_t ;


 int INT_STS_OFFSET ;
 int IRQ_HANDLED ;
 int IXR_DMA_DONE_MASK ;
 int IXR_ERROR_FLAGS_MASK ;
 int complete (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int zynq_fpga_read (struct zynq_fpga_priv*,int ) ;
 int zynq_fpga_set_irq (struct zynq_fpga_priv*,int ) ;
 int zynq_fpga_write (struct zynq_fpga_priv*,int ,int) ;
 int zynq_step_dma (struct zynq_fpga_priv*) ;

__attribute__((used)) static irqreturn_t zynq_fpga_isr(int irq, void *data)
{
 struct zynq_fpga_priv *priv = data;
 u32 intr_status;





 spin_lock(&priv->dma_lock);
 intr_status = zynq_fpga_read(priv, INT_STS_OFFSET);
 if (!(intr_status & IXR_ERROR_FLAGS_MASK) &&
     (intr_status & IXR_DMA_DONE_MASK) && priv->cur_sg) {
  zynq_fpga_write(priv, INT_STS_OFFSET, IXR_DMA_DONE_MASK);
  zynq_step_dma(priv);
  spin_unlock(&priv->dma_lock);
  return IRQ_HANDLED;
 }
 spin_unlock(&priv->dma_lock);

 zynq_fpga_set_irq(priv, 0);
 complete(&priv->dma_done);

 return IRQ_HANDLED;
}
