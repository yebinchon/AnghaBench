
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_dma {scalar_t__ csr_dma; } ;


 int XGENE_DMA_DISABLE (int ) ;
 scalar_t__ XGENE_DMA_GCR ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void xgene_dma_disable(struct xgene_dma *pdma)
{
 u32 val;

 val = ioread32(pdma->csr_dma + XGENE_DMA_GCR);
 XGENE_DMA_DISABLE(val);
 iowrite32(val, pdma->csr_dma + XGENE_DMA_GCR);
}
