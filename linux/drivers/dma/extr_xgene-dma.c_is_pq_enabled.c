
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_dma {scalar_t__ csr_efuse; } ;


 int XGENE_DMA_PQ_DISABLE_MASK ;
 scalar_t__ XGENE_SOC_JTAG1_SHADOW ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static bool is_pq_enabled(struct xgene_dma *pdma)
{
 u32 val;

 val = ioread32(pdma->csr_efuse + XGENE_SOC_JTAG1_SHADOW);
 return !(val & XGENE_DMA_PQ_DISABLE_MASK);
}
