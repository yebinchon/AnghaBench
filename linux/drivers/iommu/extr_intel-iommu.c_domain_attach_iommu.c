
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {size_t seq_id; int node; int domain_ids; int name; int cap; int lock; } ;
struct dmar_domain {int* iommu_refcnt; int iommu_count; int* iommu_did; int nid; } ;


 int ENOSPC ;
 int assert_spin_locked (int *) ;
 unsigned long cap_ndoms (int ) ;
 int device_domain_lock ;
 int domain_update_iommu_cap (struct dmar_domain*) ;
 int find_first_zero_bit (int ,unsigned long) ;
 int pr_err (char*,int ) ;
 int set_bit (int,int ) ;
 int set_iommu_domain (struct intel_iommu*,int,struct dmar_domain*) ;

__attribute__((used)) static int domain_attach_iommu(struct dmar_domain *domain,
          struct intel_iommu *iommu)
{
 unsigned long ndomains;
 int num;

 assert_spin_locked(&device_domain_lock);
 assert_spin_locked(&iommu->lock);

 domain->iommu_refcnt[iommu->seq_id] += 1;
 domain->iommu_count += 1;
 if (domain->iommu_refcnt[iommu->seq_id] == 1) {
  ndomains = cap_ndoms(iommu->cap);
  num = find_first_zero_bit(iommu->domain_ids, ndomains);

  if (num >= ndomains) {
   pr_err("%s: No free domain ids\n", iommu->name);
   domain->iommu_refcnt[iommu->seq_id] -= 1;
   domain->iommu_count -= 1;
   return -ENOSPC;
  }

  set_bit(num, iommu->domain_ids);
  set_iommu_domain(iommu, num, domain);

  domain->iommu_did[iommu->seq_id] = num;
  domain->nid = iommu->node;

  domain_update_iommu_cap(domain);
 }

 return 0;
}
