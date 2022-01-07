
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipmmu_vmsa_domain {int context_id; TYPE_1__* mmu; } ;
struct TYPE_2__ {int root; } ;


 int IMCTR ;
 int IMCTR_FLUSH ;
 int ipmmu_ctx_write_all (struct ipmmu_vmsa_domain*,int ,int ) ;
 int ipmmu_domain_free_context (int ,int ) ;
 int ipmmu_tlb_sync (struct ipmmu_vmsa_domain*) ;

__attribute__((used)) static void ipmmu_domain_destroy_context(struct ipmmu_vmsa_domain *domain)
{
 if (!domain->mmu)
  return;







 ipmmu_ctx_write_all(domain, IMCTR, IMCTR_FLUSH);
 ipmmu_tlb_sync(domain);
 ipmmu_domain_free_context(domain->mmu->root, domain->context_id);
}
