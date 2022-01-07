
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmmu_vmsa_domain {scalar_t__ mmu; } ;
struct iommu_domain {int dummy; } ;


 int ipmmu_tlb_flush_all (struct ipmmu_vmsa_domain*) ;
 struct ipmmu_vmsa_domain* to_vmsa_domain (struct iommu_domain*) ;

__attribute__((used)) static void ipmmu_flush_iotlb_all(struct iommu_domain *io_domain)
{
 struct ipmmu_vmsa_domain *domain = to_vmsa_domain(io_domain);

 if (domain->mmu)
  ipmmu_tlb_flush_all(domain);
}
