
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {scalar_t__ iova_cookie; } ;


 int EEXIST ;
 int ENOMEM ;
 int IOMMU_DMA_IOVA_COOKIE ;
 scalar_t__ cookie_alloc (int ) ;

int iommu_get_dma_cookie(struct iommu_domain *domain)
{
 if (domain->iova_cookie)
  return -EEXIST;

 domain->iova_cookie = cookie_alloc(IOMMU_DMA_IOVA_COOKIE);
 if (!domain->iova_cookie)
  return -ENOMEM;

 return 0;
}
