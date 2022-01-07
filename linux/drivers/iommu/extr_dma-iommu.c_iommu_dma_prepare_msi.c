
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_desc {int * iommu_cookie; } ;
struct iommu_domain {struct iommu_dma_cookie* iova_cookie; } ;
struct iommu_dma_msi_page {int dummy; } ;
struct iommu_dma_cookie {int msi_lock; } ;
struct device {int dummy; } ;
typedef int phys_addr_t ;


 int ENOMEM ;
 struct iommu_dma_msi_page* iommu_dma_get_msi_page (struct device*,int ,struct iommu_domain*) ;
 struct iommu_domain* iommu_get_domain_for_dev (struct device*) ;
 int msi_desc_set_iommu_cookie (struct msi_desc*,struct iommu_dma_msi_page*) ;
 struct device* msi_desc_to_dev (struct msi_desc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int iommu_dma_prepare_msi(struct msi_desc *desc, phys_addr_t msi_addr)
{
 struct device *dev = msi_desc_to_dev(desc);
 struct iommu_domain *domain = iommu_get_domain_for_dev(dev);
 struct iommu_dma_cookie *cookie;
 struct iommu_dma_msi_page *msi_page;
 unsigned long flags;

 if (!domain || !domain->iova_cookie) {
  desc->iommu_cookie = ((void*)0);
  return 0;
 }

 cookie = domain->iova_cookie;






 spin_lock_irqsave(&cookie->msi_lock, flags);
 msi_page = iommu_dma_get_msi_page(dev, msi_addr, domain);
 spin_unlock_irqrestore(&cookie->msi_lock, flags);

 msi_desc_set_iommu_cookie(desc, msi_page);

 if (!msi_page)
  return -ENOMEM;
 return 0;
}
