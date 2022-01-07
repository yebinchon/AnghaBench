
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct pasid_entry {int dummy; } ;
struct intel_iommu {int agaw; size_t seq_id; int cap; int ecap; int name; } ;
struct dmar_domain {int agaw; int * iommu_did; struct dma_pte* pgd; } ;
struct dma_pte {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ cap_caching_mode (int ) ;
 int clflush_cache_range (struct pasid_entry*,int) ;
 int dev_err (struct device*,char*,...) ;
 int dma_pte_addr (struct dma_pte*) ;
 int dma_pte_present (struct dma_pte*) ;
 int ecap_coherent (int ) ;
 int ecap_slts (int ) ;
 int ecap_smpwc (int ) ;
 struct pasid_entry* intel_pasid_get_entry (struct device*,int) ;
 int iommu_flush_write_buffer (struct intel_iommu*) ;
 int iotlb_invalidation_with_pasid (struct intel_iommu*,int ,int) ;
 int pasid_cache_invalidation_with_pasid (struct intel_iommu*,int ,int) ;
 int pasid_clear_entry (struct pasid_entry*) ;
 int pasid_set_address_width (struct pasid_entry*,int) ;
 int pasid_set_domain_id (struct pasid_entry*,int ) ;
 int pasid_set_fault_enable (struct pasid_entry*) ;
 int pasid_set_page_snoop (struct pasid_entry*,int) ;
 int pasid_set_present (struct pasid_entry*) ;
 int pasid_set_slptr (struct pasid_entry*,int ) ;
 int pasid_set_sre (struct pasid_entry*) ;
 int pasid_set_translation_type (struct pasid_entry*,int) ;
 struct dma_pte* phys_to_virt (int ) ;
 int pr_err (char*,int ) ;
 int virt_to_phys (struct dma_pte*) ;

int intel_pasid_setup_second_level(struct intel_iommu *iommu,
       struct dmar_domain *domain,
       struct device *dev, int pasid)
{
 struct pasid_entry *pte;
 struct dma_pte *pgd;
 u64 pgd_val;
 int agaw;
 u16 did;





 if (!ecap_slts(iommu->ecap)) {
  pr_err("No second level translation support on %s\n",
         iommu->name);
  return -EINVAL;
 }





 pgd = domain->pgd;
 for (agaw = domain->agaw; agaw > iommu->agaw; agaw--) {
  pgd = phys_to_virt(dma_pte_addr(pgd));
  if (!dma_pte_present(pgd)) {
   dev_err(dev, "Invalid domain page table\n");
   return -EINVAL;
  }
 }

 pgd_val = virt_to_phys(pgd);
 did = domain->iommu_did[iommu->seq_id];

 pte = intel_pasid_get_entry(dev, pasid);
 if (!pte) {
  dev_err(dev, "Failed to get pasid entry of PASID %d\n", pasid);
  return -ENODEV;
 }

 pasid_clear_entry(pte);
 pasid_set_domain_id(pte, did);
 pasid_set_slptr(pte, pgd_val);
 pasid_set_address_width(pte, agaw);
 pasid_set_translation_type(pte, 2);
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
