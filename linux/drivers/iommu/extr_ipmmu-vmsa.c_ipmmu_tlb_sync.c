
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipmmu_vmsa_domain {TYPE_1__* mmu; } ;
struct TYPE_2__ {int dev; } ;


 int IMCTR ;
 int IMCTR_FLUSH ;
 unsigned int TLB_LOOP_TIMEOUT ;
 int cpu_relax () ;
 int dev_err_ratelimited (int ,char*) ;
 int ipmmu_ctx_read_root (struct ipmmu_vmsa_domain*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void ipmmu_tlb_sync(struct ipmmu_vmsa_domain *domain)
{
 unsigned int count = 0;

 while (ipmmu_ctx_read_root(domain, IMCTR) & IMCTR_FLUSH) {
  cpu_relax();
  if (++count == TLB_LOOP_TIMEOUT) {
   dev_err_ratelimited(domain->mmu->dev,
   "TLB sync timed out -- MMU may be deadlocked\n");
   return;
  }
  udelay(1);
 }
}
