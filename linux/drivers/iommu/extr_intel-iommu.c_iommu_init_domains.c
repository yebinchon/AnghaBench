
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_iommu {void** domain_ids; void** domains; int name; int lock; int cap; } ;
struct dmar_domain {int dummy; } ;


 int ALIGN (int ,int) ;
 int BITS_TO_LONGS (int ) ;
 int ENOMEM ;
 int FLPT_DEFAULT_DID ;
 int GFP_KERNEL ;
 int cap_ndoms (int ) ;
 void** kcalloc (int ,int,int ) ;
 int kfree (void**) ;
 void* kzalloc (size_t,int ) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*,int ) ;
 int set_bit (int ,void**) ;
 scalar_t__ sm_supported (struct intel_iommu*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int iommu_init_domains(struct intel_iommu *iommu)
{
 u32 ndomains, nlongs;
 size_t size;

 ndomains = cap_ndoms(iommu->cap);
 pr_debug("%s: Number of Domains supported <%d>\n",
   iommu->name, ndomains);
 nlongs = BITS_TO_LONGS(ndomains);

 spin_lock_init(&iommu->lock);

 iommu->domain_ids = kcalloc(nlongs, sizeof(unsigned long), GFP_KERNEL);
 if (!iommu->domain_ids) {
  pr_err("%s: Allocating domain id array failed\n",
         iommu->name);
  return -ENOMEM;
 }

 size = (ALIGN(ndomains, 256) >> 8) * sizeof(struct dmar_domain **);
 iommu->domains = kzalloc(size, GFP_KERNEL);

 if (iommu->domains) {
  size = 256 * sizeof(struct dmar_domain *);
  iommu->domains[0] = kzalloc(size, GFP_KERNEL);
 }

 if (!iommu->domains || !iommu->domains[0]) {
  pr_err("%s: Allocating domain array failed\n",
         iommu->name);
  kfree(iommu->domain_ids);
  kfree(iommu->domains);
  iommu->domain_ids = ((void*)0);
  iommu->domains = ((void*)0);
  return -ENOMEM;
 }







 set_bit(0, iommu->domain_ids);
 if (sm_supported(iommu))
  set_bit(FLPT_DEFAULT_DID, iommu->domain_ids);

 return 0;
}
