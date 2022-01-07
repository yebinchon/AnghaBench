
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct mic_dma_desc {unsigned long long qw0; unsigned long long qw1; } ;
typedef unsigned long long dma_addr_t ;


 unsigned long long MIC_DMA_DESC_TYPE_SHIFT ;
 scalar_t__ MIC_DMA_STATUS ;
 unsigned long long MIC_DMA_STAT_INTR_SHIFT ;

__attribute__((used)) static inline void mic_dma_prep_status_desc(struct mic_dma_desc *desc, u64 data,
 dma_addr_t dst_phys, bool generate_intr)
{
 u64 qw0, qw1;

 qw0 = data;
 qw1 = (u64) MIC_DMA_STATUS << MIC_DMA_DESC_TYPE_SHIFT | dst_phys;
 if (generate_intr)
  qw1 |= (1ULL << MIC_DMA_STAT_INTR_SHIFT);
 desc->qw0 = qw0;
 desc->qw1 = qw1;
}
