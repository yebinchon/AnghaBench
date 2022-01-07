
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_pgtable_cfg {int iommu_dev; int coherent_walk; } ;


 int DMA_TO_DEVICE ;
 int __arm_lpae_dma_addr (void*) ;
 int dma_unmap_single (int ,int ,size_t,int ) ;
 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;

__attribute__((used)) static void __arm_lpae_free_pages(void *pages, size_t size,
      struct io_pgtable_cfg *cfg)
{
 if (!cfg->coherent_walk)
  dma_unmap_single(cfg->iommu_dev, __arm_lpae_dma_addr(pages),
     size, DMA_TO_DEVICE);
 free_pages((unsigned long)pages, get_order(size));
}
