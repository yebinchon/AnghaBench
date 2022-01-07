
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_domain {int dummy; } ;
struct iommu_dma_cookie {scalar_t__ type; size_t msi_iova; scalar_t__ fq_domain; struct iova_domain iovad; } ;
typedef int dma_addr_t ;


 scalar_t__ IOMMU_DMA_MSI_COOKIE ;
 int free_iova_fast (struct iova_domain*,int ,size_t) ;
 int iova_pfn (struct iova_domain*,int ) ;
 size_t iova_shift (struct iova_domain*) ;
 int queue_iova (struct iova_domain*,int ,size_t,int ) ;

__attribute__((used)) static void iommu_dma_free_iova(struct iommu_dma_cookie *cookie,
  dma_addr_t iova, size_t size)
{
 struct iova_domain *iovad = &cookie->iovad;


 if (cookie->type == IOMMU_DMA_MSI_COOKIE)
  cookie->msi_iova -= size;
 else if (cookie->fq_domain)
  queue_iova(iovad, iova_pfn(iovad, iova),
    size >> iova_shift(iovad), 0);
 else
  free_iova_fast(iovad, iova_pfn(iovad, iova),
    size >> iova_shift(iovad));
}
