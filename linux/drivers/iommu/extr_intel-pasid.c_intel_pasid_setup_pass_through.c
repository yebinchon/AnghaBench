
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pasid_entry {int dummy; } ;
struct intel_iommu {int cap; int ecap; int agaw; } ;
struct dmar_domain {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int FLPT_DEFAULT_DID ;
 scalar_t__ cap_caching_mode (int ) ;
 int clflush_cache_range (struct pasid_entry*,int) ;
 int dev_err (struct device*,char*,int) ;
 int ecap_coherent (int ) ;
 int ecap_smpwc (int ) ;
 struct pasid_entry* intel_pasid_get_entry (struct device*,int) ;
 int iommu_flush_write_buffer (struct intel_iommu*) ;
 int iotlb_invalidation_with_pasid (struct intel_iommu*,int ,int) ;
 int pasid_cache_invalidation_with_pasid (struct intel_iommu*,int ,int) ;
 int pasid_clear_entry (struct pasid_entry*) ;
 int pasid_set_address_width (struct pasid_entry*,int ) ;
 int pasid_set_domain_id (struct pasid_entry*,int ) ;
 int pasid_set_fault_enable (struct pasid_entry*) ;
 int pasid_set_page_snoop (struct pasid_entry*,int) ;
 int pasid_set_present (struct pasid_entry*) ;
 int pasid_set_sre (struct pasid_entry*) ;
 int pasid_set_translation_type (struct pasid_entry*,int) ;

int intel_pasid_setup_pass_through(struct intel_iommu *iommu,
       struct dmar_domain *domain,
       struct device *dev, int pasid)
{
 u16 did = FLPT_DEFAULT_DID;
 struct pasid_entry *pte;

 pte = intel_pasid_get_entry(dev, pasid);
 if (!pte) {
  dev_err(dev, "Failed to get pasid entry of PASID %d\n", pasid);
  return -ENODEV;
 }

 pasid_clear_entry(pte);
 pasid_set_domain_id(pte, did);
 pasid_set_address_width(pte, iommu->agaw);
 pasid_set_translation_type(pte, 4);
 pasid_set_fault_enable(pte);
 pasid_set_page_snoop(pte, !!ecap_smpwc(iommu->ecap));





 pasid_set_sre(pte);
 pasid_set_present(pte);

 if (!ecap_coherent(iommu->ecap))
  clflush_cache_range(pte, sizeof(*pte));

 if (cap_caching_mode(iommu->cap)) {
  pasid_cache_invalidation_with_pasid(iommu, did, pasid);
  iotlb_invalidation_with_pasid(iommu, did, pasid);
 } else {
  iommu_flush_write_buffer(iommu);
 }

 return 0;
}
