
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pasid_entry {int dummy; } ;
struct intel_iommu {int cap; int ecap; } ;
struct device {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 int cap_caching_mode (int ) ;
 int clflush_cache_range (struct pasid_entry*,int) ;
 int devtlb_invalidation_with_pasid (struct intel_iommu*,struct device*,int) ;
 int ecap_coherent (int ) ;
 int intel_pasid_clear_entry (struct device*,int) ;
 struct pasid_entry* intel_pasid_get_entry (struct device*,int) ;
 int iotlb_invalidation_with_pasid (struct intel_iommu*,int ,int) ;
 int pasid_cache_invalidation_with_pasid (struct intel_iommu*,int ,int) ;
 int pasid_get_domain_id (struct pasid_entry*) ;

void intel_pasid_tear_down_entry(struct intel_iommu *iommu,
     struct device *dev, int pasid)
{
 struct pasid_entry *pte;
 u16 did;

 pte = intel_pasid_get_entry(dev, pasid);
 if (WARN_ON(!pte))
  return;

 did = pasid_get_domain_id(pte);
 intel_pasid_clear_entry(dev, pasid);

 if (!ecap_coherent(iommu->ecap))
  clflush_cache_range(pte, sizeof(*pte));

 pasid_cache_invalidation_with_pasid(iommu, did, pasid);
 iotlb_invalidation_with_pasid(iommu, did, pasid);


 if (!cap_caching_mode(iommu->cap))
  devtlb_invalidation_with_pasid(iommu, dev, pasid);
}
