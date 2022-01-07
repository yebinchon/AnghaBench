
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t shift; int domain; int limit; } ;
struct tegra_drm {TYPE_1__ carveout; scalar_t__ domain; } ;
struct iova {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int EBUSY ;
 int ENOMEM ;
 void* ERR_PTR (int) ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int IOMMU_READ ;
 int IOMMU_WRITE ;
 size_t PAGE_ALIGN (size_t) ;
 int __GFP_ZERO ;
 int __free_iova (int *,struct iova*) ;
 scalar_t__ __get_free_pages (int,int ) ;
 struct iova* alloc_iova (int *,size_t,int ,int) ;
 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;
 int iommu_map (scalar_t__,int ,int ,size_t,int) ;
 size_t iova_align (int *,size_t) ;
 int iova_dma_addr (int *,struct iova*) ;
 int virt_to_phys (void*) ;

void *tegra_drm_alloc(struct tegra_drm *tegra, size_t size, dma_addr_t *dma)
{
 struct iova *alloc;
 void *virt;
 gfp_t gfp;
 int err;

 if (tegra->domain)
  size = iova_align(&tegra->carveout.domain, size);
 else
  size = PAGE_ALIGN(size);

 gfp = GFP_KERNEL | __GFP_ZERO;
 if (!tegra->domain) {






  gfp |= GFP_DMA;
 }

 virt = (void *)__get_free_pages(gfp, get_order(size));
 if (!virt)
  return ERR_PTR(-ENOMEM);

 if (!tegra->domain) {




  *dma = virt_to_phys(virt);
  return virt;
 }

 alloc = alloc_iova(&tegra->carveout.domain,
      size >> tegra->carveout.shift,
      tegra->carveout.limit, 1);
 if (!alloc) {
  err = -EBUSY;
  goto free_pages;
 }

 *dma = iova_dma_addr(&tegra->carveout.domain, alloc);
 err = iommu_map(tegra->domain, *dma, virt_to_phys(virt),
   size, IOMMU_READ | IOMMU_WRITE);
 if (err < 0)
  goto free_iova;

 return virt;

free_iova:
 __free_iova(&tegra->carveout.domain, alloc);
free_pages:
 free_pages((unsigned long)virt, get_order(size));

 return ERR_PTR(err);
}
