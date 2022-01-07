
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynq_fpga_priv {scalar_t__ dma_elm; scalar_t__ dma_nelms; int * cur_sg; } ;


 int DMA_DEST_LEN_OFFSET ;
 int DMA_DST_ADDR_OFFSET ;
 int DMA_INVALID_ADDRESS ;
 int DMA_SRC_ADDR_OFFSET ;
 int DMA_SRC_LAST_TRANSFER ;
 int DMA_SRC_LEN_OFFSET ;
 int IXR_DMA_DONE_MASK ;
 int IXR_D_P_DONE_MASK ;
 int IXR_ERROR_FLAGS_MASK ;
 int STATUS_DMA_Q_F ;
 int STATUS_OFFSET ;
 int sg_dma_address (int *) ;
 int sg_dma_len (int *) ;
 int * sg_next (int *) ;
 int zynq_fpga_read (struct zynq_fpga_priv*,int ) ;
 int zynq_fpga_set_irq (struct zynq_fpga_priv*,int) ;
 int zynq_fpga_write (struct zynq_fpga_priv*,int ,int) ;

__attribute__((used)) static void zynq_step_dma(struct zynq_fpga_priv *priv)
{
 u32 addr;
 u32 len;
 bool first;

 first = priv->dma_elm == 0;
 while (priv->cur_sg) {

  if (zynq_fpga_read(priv, STATUS_OFFSET) & STATUS_DMA_Q_F)
   break;

  addr = sg_dma_address(priv->cur_sg);
  len = sg_dma_len(priv->cur_sg);
  if (priv->dma_elm + 1 == priv->dma_nelms) {





   addr |= DMA_SRC_LAST_TRANSFER;
   priv->cur_sg = ((void*)0);
  } else {
   priv->cur_sg = sg_next(priv->cur_sg);
   priv->dma_elm++;
  }

  zynq_fpga_write(priv, DMA_SRC_ADDR_OFFSET, addr);
  zynq_fpga_write(priv, DMA_DST_ADDR_OFFSET, DMA_INVALID_ADDRESS);
  zynq_fpga_write(priv, DMA_SRC_LEN_OFFSET, len / 4);
  zynq_fpga_write(priv, DMA_DEST_LEN_OFFSET, 0);
 }







 if (first && priv->cur_sg) {
  zynq_fpga_set_irq(priv,
      IXR_DMA_DONE_MASK | IXR_ERROR_FLAGS_MASK);
 } else if (!priv->cur_sg) {




  zynq_fpga_set_irq(priv,
      IXR_D_P_DONE_MASK | IXR_ERROR_FLAGS_MASK);
 }
}
