
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmmu_vmsa_domain {int dummy; } ;


 int ipmmu_tlb_invalidate (struct ipmmu_vmsa_domain*) ;

__attribute__((used)) static void ipmmu_tlb_flush_all(void *cookie)
{
 struct ipmmu_vmsa_domain *domain = cookie;

 ipmmu_tlb_invalidate(domain);
}
