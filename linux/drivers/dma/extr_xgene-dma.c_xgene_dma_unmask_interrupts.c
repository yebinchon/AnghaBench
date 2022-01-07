
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_dma {scalar_t__ csr_dma; } ;


 int XGENE_DMA_INT_ALL_UNMASK ;
 scalar_t__ XGENE_DMA_INT_MASK ;
 scalar_t__ XGENE_DMA_RING_INT0_MASK ;
 scalar_t__ XGENE_DMA_RING_INT1_MASK ;
 scalar_t__ XGENE_DMA_RING_INT2_MASK ;
 scalar_t__ XGENE_DMA_RING_INT3_MASK ;
 scalar_t__ XGENE_DMA_RING_INT4_MASK ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void xgene_dma_unmask_interrupts(struct xgene_dma *pdma)
{




 iowrite32(XGENE_DMA_INT_ALL_UNMASK,
    pdma->csr_dma + XGENE_DMA_RING_INT0_MASK);
 iowrite32(XGENE_DMA_INT_ALL_UNMASK,
    pdma->csr_dma + XGENE_DMA_RING_INT1_MASK);
 iowrite32(XGENE_DMA_INT_ALL_UNMASK,
    pdma->csr_dma + XGENE_DMA_RING_INT2_MASK);
 iowrite32(XGENE_DMA_INT_ALL_UNMASK,
    pdma->csr_dma + XGENE_DMA_RING_INT3_MASK);
 iowrite32(XGENE_DMA_INT_ALL_UNMASK,
    pdma->csr_dma + XGENE_DMA_RING_INT4_MASK);


 iowrite32(XGENE_DMA_INT_ALL_UNMASK,
    pdma->csr_dma + XGENE_DMA_INT_MASK);
}
