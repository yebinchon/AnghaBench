
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_dma {int dev; scalar_t__ csr_dma; } ;


 int ENODEV ;
 scalar_t__ XGENE_DMA_BLK_MEM_RDY ;
 scalar_t__ XGENE_DMA_BLK_MEM_RDY_VAL ;
 scalar_t__ XGENE_DMA_MEM_RAM_SHUTDOWN ;
 int dev_err (int ,char*) ;
 scalar_t__ ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int usleep_range (int,int) ;
 int xgene_dma_init_ring_mngr (struct xgene_dma*) ;

__attribute__((used)) static int xgene_dma_init_mem(struct xgene_dma *pdma)
{
 int ret;

 ret = xgene_dma_init_ring_mngr(pdma);
 if (ret)
  return ret;


 iowrite32(0x0, pdma->csr_dma + XGENE_DMA_MEM_RAM_SHUTDOWN);


 ioread32(pdma->csr_dma + XGENE_DMA_MEM_RAM_SHUTDOWN);


 usleep_range(1000, 1100);

 if (ioread32(pdma->csr_dma + XGENE_DMA_BLK_MEM_RDY)
  != XGENE_DMA_BLK_MEM_RDY_VAL) {
  dev_err(pdma->dev,
   "Failed to release DMA memory from shutdown\n");
  return -ENODEV;
 }

 return 0;
}
