
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef int u32 ;
typedef size_t u16 ;
struct protection_domain {unsigned long long mode; int flags; unsigned long long glx; unsigned long long id; int gcr3_tbl; int pt_root; } ;
struct amd_iommu {int dummy; } ;
struct TYPE_2__ {unsigned long long* data; } ;


 unsigned long long DEV_DOMID_MASK ;
 unsigned long long DEV_ENTRY_MODE_MASK ;
 unsigned long long DEV_ENTRY_MODE_SHIFT ;
 unsigned long long DEV_ENTRY_PPR ;
 unsigned long long DTE_FLAG_GV ;
 unsigned long long DTE_FLAG_IOTLB ;
 unsigned long long DTE_FLAG_IR ;
 unsigned long long DTE_FLAG_IW ;
 unsigned long long DTE_FLAG_TV ;
 unsigned long long DTE_FLAG_V ;
 unsigned long long DTE_GCR3_SHIFT_A ;
 unsigned long long DTE_GCR3_SHIFT_B ;
 unsigned long long DTE_GCR3_SHIFT_C ;
 unsigned long long DTE_GCR3_VAL_A (unsigned long long) ;
 unsigned long long DTE_GCR3_VAL_B (unsigned long long) ;
 unsigned long long DTE_GCR3_VAL_C (unsigned long long) ;
 unsigned long long DTE_GLX_MASK ;
 unsigned long long DTE_GLX_SHIFT ;
 int FEATURE_EPHSUP ;
 unsigned long long PAGE_MODE_NONE ;
 int PD_IOMMUV2_MASK ;
 TYPE_1__* amd_iommu_dev_table ;
 int amd_iommu_flush_tlb_domid (struct amd_iommu*,int) ;
 struct amd_iommu** amd_iommu_rlookup_table ;
 scalar_t__ iommu_feature (struct amd_iommu*,int ) ;
 unsigned long long iommu_virt_to_phys (int ) ;

__attribute__((used)) static void set_dte_entry(u16 devid, struct protection_domain *domain,
     bool ats, bool ppr)
{
 u64 pte_root = 0;
 u64 flags = 0;
 u32 old_domid;

 if (domain->mode != PAGE_MODE_NONE)
  pte_root = iommu_virt_to_phys(domain->pt_root);

 pte_root |= (domain->mode & DEV_ENTRY_MODE_MASK)
      << DEV_ENTRY_MODE_SHIFT;
 pte_root |= DTE_FLAG_IR | DTE_FLAG_IW | DTE_FLAG_V | DTE_FLAG_TV;

 flags = amd_iommu_dev_table[devid].data[1];

 if (ats)
  flags |= DTE_FLAG_IOTLB;

 if (ppr) {
  struct amd_iommu *iommu = amd_iommu_rlookup_table[devid];

  if (iommu_feature(iommu, FEATURE_EPHSUP))
   pte_root |= 1ULL << DEV_ENTRY_PPR;
 }

 if (domain->flags & PD_IOMMUV2_MASK) {
  u64 gcr3 = iommu_virt_to_phys(domain->gcr3_tbl);
  u64 glx = domain->glx;
  u64 tmp;

  pte_root |= DTE_FLAG_GV;
  pte_root |= (glx & DTE_GLX_MASK) << DTE_GLX_SHIFT;


  tmp = DTE_GCR3_VAL_B(~0ULL) << DTE_GCR3_SHIFT_B;
  flags &= ~tmp;

  tmp = DTE_GCR3_VAL_C(~0ULL) << DTE_GCR3_SHIFT_C;
  flags &= ~tmp;


  tmp = DTE_GCR3_VAL_A(gcr3) << DTE_GCR3_SHIFT_A;
  pte_root |= tmp;

  tmp = DTE_GCR3_VAL_B(gcr3) << DTE_GCR3_SHIFT_B;
  flags |= tmp;

  tmp = DTE_GCR3_VAL_C(gcr3) << DTE_GCR3_SHIFT_C;
  flags |= tmp;
 }

 flags &= ~DEV_DOMID_MASK;
 flags |= domain->id;

 old_domid = amd_iommu_dev_table[devid].data[1] & DEV_DOMID_MASK;
 amd_iommu_dev_table[devid].data[1] = flags;
 amd_iommu_dev_table[devid].data[0] = pte_root;






 if (old_domid) {
  struct amd_iommu *iommu = amd_iommu_rlookup_table[devid];

  amd_iommu_flush_tlb_domid(iommu, old_domid);
 }
}
