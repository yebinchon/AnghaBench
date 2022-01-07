
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {int cap; } ;
struct dmar_domain {int dummy; } ;


 scalar_t__ cap_caching_mode (int ) ;
 int iommu_flush_iotlb_psi (struct intel_iommu*,struct dmar_domain*,unsigned long,unsigned int,int ,int) ;
 int iommu_flush_write_buffer (struct intel_iommu*) ;

__attribute__((used)) static inline void __mapping_notify_one(struct intel_iommu *iommu,
     struct dmar_domain *domain,
     unsigned long pfn, unsigned int pages)
{

 if (cap_caching_mode(iommu->cap))
  iommu_flush_iotlb_psi(iommu, domain, pfn, pages, 0, 1);
 else
  iommu_flush_write_buffer(iommu);
}
