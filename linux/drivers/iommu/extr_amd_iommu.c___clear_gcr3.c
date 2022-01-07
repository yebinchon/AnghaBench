
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct protection_domain {scalar_t__ mode; int glx; int gcr3_tbl; } ;


 int EINVAL ;
 scalar_t__ PAGE_MODE_NONE ;
 int __amd_iommu_flush_tlb (struct protection_domain*,int) ;
 scalar_t__* __get_gcr3_pte (int ,int ,int,int) ;

__attribute__((used)) static int __clear_gcr3(struct protection_domain *domain, int pasid)
{
 u64 *pte;

 if (domain->mode != PAGE_MODE_NONE)
  return -EINVAL;

 pte = __get_gcr3_pte(domain->gcr3_tbl, domain->glx, pasid, 0);
 if (pte == ((void*)0))
  return 0;

 *pte = 0;

 return __amd_iommu_flush_tlb(domain, pasid);
}
