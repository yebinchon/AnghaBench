
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_iommu {int dev; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int IOPTE_TABLE_SIZE ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int iopte_cachep ;
 int kmem_cache_free (int ,int *) ;
 int virt_to_phys (int *) ;

__attribute__((used)) static void iopte_free(struct omap_iommu *obj, u32 *iopte, bool dma_valid)
{
 dma_addr_t pt_dma;


 if (iopte) {
  if (dma_valid) {
   pt_dma = virt_to_phys(iopte);
   dma_unmap_single(obj->dev, pt_dma, IOPTE_TABLE_SIZE,
      DMA_TO_DEVICE);
  }

  kmem_cache_free(iopte_cachep, iopte);
 }
}
