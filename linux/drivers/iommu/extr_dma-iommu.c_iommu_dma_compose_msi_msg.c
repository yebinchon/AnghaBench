
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_msg {int address_lo; int address_hi; } ;
struct msi_desc {int dummy; } ;
struct iommu_domain {int iova_cookie; } ;
struct iommu_dma_msi_page {int iova; } ;
struct device {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 int cookie_msi_granule (int ) ;
 struct iommu_domain* iommu_get_domain_for_dev (struct device*) ;
 scalar_t__ lower_32_bits (int ) ;
 struct iommu_dma_msi_page* msi_desc_get_iommu_cookie (struct msi_desc*) ;
 struct device* msi_desc_to_dev (struct msi_desc*) ;
 int upper_32_bits (int ) ;

void iommu_dma_compose_msi_msg(struct msi_desc *desc,
          struct msi_msg *msg)
{
 struct device *dev = msi_desc_to_dev(desc);
 const struct iommu_domain *domain = iommu_get_domain_for_dev(dev);
 const struct iommu_dma_msi_page *msi_page;

 msi_page = msi_desc_get_iommu_cookie(desc);

 if (!domain || !domain->iova_cookie || WARN_ON(!msi_page))
  return;

 msg->address_hi = upper_32_bits(msi_page->iova);
 msg->address_lo &= cookie_msi_granule(domain->iova_cookie) - 1;
 msg->address_lo += lower_32_bits(msi_page->iova);
}
