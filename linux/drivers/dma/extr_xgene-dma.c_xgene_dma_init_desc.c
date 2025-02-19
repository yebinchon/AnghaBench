
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u16 ;
struct xgene_dma_desc_hw {int m3; int m1; int m0; } ;


 int XGENE_DMA_DESC_C_BIT ;
 int XGENE_DMA_DESC_HOENQ_NUM_POS ;
 int XGENE_DMA_DESC_IN_BIT ;
 int XGENE_DMA_DESC_RTYPE_POS ;
 scalar_t__ XGENE_DMA_RING_OWNER_DMA ;
 int cpu_to_le64 (int) ;

__attribute__((used)) static void xgene_dma_init_desc(struct xgene_dma_desc_hw *desc,
    u16 dst_ring_num)
{
 desc->m0 |= cpu_to_le64(XGENE_DMA_DESC_IN_BIT);
 desc->m0 |= cpu_to_le64((u64)XGENE_DMA_RING_OWNER_DMA <<
    XGENE_DMA_DESC_RTYPE_POS);
 desc->m1 |= cpu_to_le64(XGENE_DMA_DESC_C_BIT);
 desc->m3 |= cpu_to_le64((u64)dst_ring_num <<
    XGENE_DMA_DESC_HOENQ_NUM_POS);
}
