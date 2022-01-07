
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protection_domain {int dummy; } ;


 int CMD_INV_IOMMU_ALL_PAGES_ADDRESS ;
 int __flush_pasid (struct protection_domain*,int,int ,int) ;

__attribute__((used)) static int __amd_iommu_flush_tlb(struct protection_domain *domain, int pasid)
{
 return __flush_pasid(domain, pasid, CMD_INV_IOMMU_ALL_PAGES_ADDRESS,
        1);
}
