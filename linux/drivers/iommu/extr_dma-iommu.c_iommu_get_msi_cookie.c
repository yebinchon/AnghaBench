
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {scalar_t__ type; struct iommu_dma_cookie* iova_cookie; } ;
struct iommu_dma_cookie {int msi_iova; } ;
typedef int dma_addr_t ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int IOMMU_DMA_MSI_COOKIE ;
 scalar_t__ IOMMU_DOMAIN_UNMANAGED ;
 struct iommu_dma_cookie* cookie_alloc (int ) ;

int iommu_get_msi_cookie(struct iommu_domain *domain, dma_addr_t base)
{
 struct iommu_dma_cookie *cookie;

 if (domain->type != IOMMU_DOMAIN_UNMANAGED)
  return -EINVAL;

 if (domain->iova_cookie)
  return -EEXIST;

 cookie = cookie_alloc(IOMMU_DMA_MSI_COOKIE);
 if (!cookie)
  return -ENOMEM;

 cookie->msi_iova = base;
 domain->iova_cookie = cookie;
 return 0;
}
