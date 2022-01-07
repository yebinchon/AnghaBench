
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rk_iommu_domain {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int dma_dev ;
 int dma_sync_single_for_device (int ,int ,size_t,int ) ;

__attribute__((used)) static inline void rk_table_flush(struct rk_iommu_domain *dom, dma_addr_t dma,
      unsigned int count)
{
 size_t size = count * sizeof(u32);

 dma_sync_single_for_device(dma_dev, dma, size, DMA_TO_DEVICE);
}
