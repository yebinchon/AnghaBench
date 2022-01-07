
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipmmu_vmsa_domain {int dummy; } ;


 int IMCTR ;
 int IMCTR_FLUSH ;
 int ipmmu_ctx_read_root (struct ipmmu_vmsa_domain*,int ) ;
 int ipmmu_ctx_write_all (struct ipmmu_vmsa_domain*,int ,int ) ;
 int ipmmu_tlb_sync (struct ipmmu_vmsa_domain*) ;

__attribute__((used)) static void ipmmu_tlb_invalidate(struct ipmmu_vmsa_domain *domain)
{
 u32 reg;

 reg = ipmmu_ctx_read_root(domain, IMCTR);
 reg |= IMCTR_FLUSH;
 ipmmu_ctx_write_all(domain, IMCTR, reg);

 ipmmu_tlb_sync(domain);
}
