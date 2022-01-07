
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipmmu_vmsa_domain {unsigned int context_id; TYPE_1__* mmu; } ;
struct TYPE_2__ {int root; } ;


 unsigned int IM_CTX_SIZE ;
 int ipmmu_read (int ,unsigned int) ;

__attribute__((used)) static u32 ipmmu_ctx_read_root(struct ipmmu_vmsa_domain *domain,
          unsigned int reg)
{
 return ipmmu_read(domain->mmu->root,
     domain->context_id * IM_CTX_SIZE + reg);
}
