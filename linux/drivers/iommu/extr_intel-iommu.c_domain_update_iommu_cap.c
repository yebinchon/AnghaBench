
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int iommu_superpage; int iommu_snooping; } ;


 int domain_update_iommu_coherency (struct dmar_domain*) ;
 int domain_update_iommu_snooping (int *) ;
 int domain_update_iommu_superpage (int *) ;

__attribute__((used)) static void domain_update_iommu_cap(struct dmar_domain *domain)
{
 domain_update_iommu_coherency(domain);
 domain->iommu_snooping = domain_update_iommu_snooping(((void*)0));
 domain->iommu_superpage = domain_update_iommu_superpage(((void*)0));
}
