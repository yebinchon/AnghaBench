
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_dma {scalar_t__ csr_ring; int dev; } ;


 int ENODEV ;
 scalar_t__ XGENE_DMA_RING_BLK_MEM_RDY ;
 scalar_t__ XGENE_DMA_RING_BLK_MEM_RDY_VAL ;
 scalar_t__ XGENE_DMA_RING_CLKEN ;
 scalar_t__ XGENE_DMA_RING_CONFIG ;
 int XGENE_DMA_RING_ENABLE ;
 scalar_t__ XGENE_DMA_RING_HYSTERESIS ;
 int XGENE_DMA_RING_HYSTERESIS_VAL ;
 scalar_t__ XGENE_DMA_RING_MEM_RAM_SHUTDOWN ;
 scalar_t__ XGENE_DMA_RING_SRST ;
 scalar_t__ XGENE_DMA_RING_THRESLD0_SET1 ;
 int XGENE_DMA_RING_THRESLD0_SET1_VAL ;
 scalar_t__ XGENE_DMA_RING_THRESLD1_SET1 ;
 int XGENE_DMA_RING_THRESLD1_SET1_VAL ;
 int dev_err (int ,char*) ;
 scalar_t__ ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int xgene_dma_init_ring_mngr(struct xgene_dma *pdma)
{
 if (ioread32(pdma->csr_ring + XGENE_DMA_RING_CLKEN) &&
     (!ioread32(pdma->csr_ring + XGENE_DMA_RING_SRST)))
  return 0;

 iowrite32(0x3, pdma->csr_ring + XGENE_DMA_RING_CLKEN);
 iowrite32(0x0, pdma->csr_ring + XGENE_DMA_RING_SRST);


 iowrite32(0x0, pdma->csr_ring + XGENE_DMA_RING_MEM_RAM_SHUTDOWN);


 ioread32(pdma->csr_ring + XGENE_DMA_RING_MEM_RAM_SHUTDOWN);


 usleep_range(1000, 1100);

 if (ioread32(pdma->csr_ring + XGENE_DMA_RING_BLK_MEM_RDY)
  != XGENE_DMA_RING_BLK_MEM_RDY_VAL) {
  dev_err(pdma->dev,
   "Failed to release ring mngr memory from shutdown\n");
  return -ENODEV;
 }


 iowrite32(XGENE_DMA_RING_THRESLD0_SET1_VAL,
    pdma->csr_ring + XGENE_DMA_RING_THRESLD0_SET1);
 iowrite32(XGENE_DMA_RING_THRESLD1_SET1_VAL,
    pdma->csr_ring + XGENE_DMA_RING_THRESLD1_SET1);
 iowrite32(XGENE_DMA_RING_HYSTERESIS_VAL,
    pdma->csr_ring + XGENE_DMA_RING_HYSTERESIS);


 iowrite32(XGENE_DMA_RING_ENABLE,
    pdma->csr_ring + XGENE_DMA_RING_CONFIG);

 return 0;
}
