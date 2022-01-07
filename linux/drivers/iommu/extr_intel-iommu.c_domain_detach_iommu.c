
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {size_t seq_id; int domain_ids; int lock; } ;
struct dmar_domain {scalar_t__* iommu_refcnt; int iommu_count; int* iommu_did; } ;


 int assert_spin_locked (int *) ;
 int clear_bit (int,int ) ;
 int device_domain_lock ;
 int domain_update_iommu_cap (struct dmar_domain*) ;
 int set_iommu_domain (struct intel_iommu*,int,int *) ;

__attribute__((used)) static int domain_detach_iommu(struct dmar_domain *domain,
          struct intel_iommu *iommu)
{
 int num, count;

 assert_spin_locked(&device_domain_lock);
 assert_spin_locked(&iommu->lock);

 domain->iommu_refcnt[iommu->seq_id] -= 1;
 count = --domain->iommu_count;
 if (domain->iommu_refcnt[iommu->seq_id] == 0) {
  num = domain->iommu_did[iommu->seq_id];
  clear_bit(num, iommu->domain_ids);
  set_iommu_domain(iommu, num, ((void*)0));

  domain_update_iommu_cap(domain);
  domain->iommu_did[iommu->seq_id] = 0;
 }

 return count;
}
