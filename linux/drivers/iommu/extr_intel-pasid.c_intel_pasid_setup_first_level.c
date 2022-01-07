
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct pasid_entry {int dummy; } ;
struct intel_iommu {int cap; int ecap; int agaw; int name; } ;
struct device {int dummy; } ;
typedef int pgd_t ;


 int EINVAL ;
 int PASID_FLAG_SUPERVISOR_MODE ;
 scalar_t__ WARN_ON (int) ;
 int X86_FEATURE_LA57 ;
 scalar_t__ __pa (int *) ;
 scalar_t__ cap_caching_mode (int ) ;
 int clflush_cache_range (struct pasid_entry*,int) ;
 scalar_t__ cpu_feature_enabled (int ) ;
 int ecap_coherent (int ) ;
 int ecap_flts (int ) ;
 int ecap_smpwc (int ) ;
 int ecap_srs (int ) ;
 struct pasid_entry* intel_pasid_get_entry (struct device*,int) ;
 int iommu_flush_write_buffer (struct intel_iommu*) ;
 int iotlb_invalidation_with_pasid (struct intel_iommu*,int ,int) ;
 int pasid_cache_invalidation_with_pasid (struct intel_iommu*,int ,int) ;
 int pasid_clear_entry (struct pasid_entry*) ;
 int pasid_set_address_width (struct pasid_entry*,int ) ;
 int pasid_set_domain_id (struct pasid_entry*,int ) ;
 int pasid_set_flpm (struct pasid_entry*,int) ;
 int pasid_set_flptr (struct pasid_entry*,int ) ;
 int pasid_set_page_snoop (struct pasid_entry*,int) ;
 int pasid_set_present (struct pasid_entry*) ;
 int pasid_set_sre (struct pasid_entry*) ;
 int pasid_set_translation_type (struct pasid_entry*,int) ;
 int pr_err (char*,int ) ;

int intel_pasid_setup_first_level(struct intel_iommu *iommu,
      struct device *dev, pgd_t *pgd,
      int pasid, u16 did, int flags)
{
 struct pasid_entry *pte;

 if (!ecap_flts(iommu->ecap)) {
  pr_err("No first level translation support on %s\n",
         iommu->name);
  return -EINVAL;
 }

 pte = intel_pasid_get_entry(dev, pasid);
 if (WARN_ON(!pte))
  return -EINVAL;

 pasid_clear_entry(pte);


 pasid_set_flptr(pte, (u64)__pa(pgd));
 if (flags & PASID_FLAG_SUPERVISOR_MODE) {
  if (!ecap_srs(iommu->ecap)) {
   pr_err("No supervisor request support on %s\n",
          iommu->name);
   return -EINVAL;
  }
  pasid_set_sre(pte);
 }






 pasid_set_domain_id(pte, did);
 pasid_set_address_width(pte, iommu->agaw);
 pasid_set_page_snoop(pte, !!ecap_smpwc(iommu->ecap));


 pasid_set_translation_type(pte, 1);
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
