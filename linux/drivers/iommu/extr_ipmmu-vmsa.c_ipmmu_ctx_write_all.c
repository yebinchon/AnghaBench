
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipmmu_vmsa_domain {unsigned int context_id; TYPE_1__* mmu; } ;
struct TYPE_2__ {struct TYPE_2__* root; } ;


 unsigned int IM_CTX_SIZE ;
 int ipmmu_write (TYPE_1__*,unsigned int,int ) ;

__attribute__((used)) static void ipmmu_ctx_write_all(struct ipmmu_vmsa_domain *domain,
    unsigned int reg, u32 data)
{
 if (domain->mmu != domain->mmu->root)
  ipmmu_write(domain->mmu,
       domain->context_id * IM_CTX_SIZE + reg, data);

 ipmmu_write(domain->mmu->root,
      domain->context_id * IM_CTX_SIZE + reg, data);
}
