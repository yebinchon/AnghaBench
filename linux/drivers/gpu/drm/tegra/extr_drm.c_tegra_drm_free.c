
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int domain; } ;
struct tegra_drm {TYPE_1__ carveout; scalar_t__ domain; } ;
typedef int dma_addr_t ;


 size_t PAGE_ALIGN (size_t) ;
 int free_iova (int *,int ) ;
 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;
 int iommu_unmap (scalar_t__,int ,size_t) ;
 size_t iova_align (int *,size_t) ;
 int iova_pfn (int *,int ) ;

void tegra_drm_free(struct tegra_drm *tegra, size_t size, void *virt,
      dma_addr_t dma)
{
 if (tegra->domain)
  size = iova_align(&tegra->carveout.domain, size);
 else
  size = PAGE_ALIGN(size);

 if (tegra->domain) {
  iommu_unmap(tegra->domain, dma, size);
  free_iova(&tegra->carveout.domain,
     iova_pfn(&tegra->carveout.domain, dma));
 }

 free_pages((unsigned long)virt, get_order(size));
}
