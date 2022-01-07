
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmmu_vmsa_domain {int context_id; struct ipmmu_vmsa_device* mmu; } ;
struct ipmmu_vmsa_device {int * utlb_ctx; } ;


 int IMUASID (unsigned int) ;
 int IMUCTR (unsigned int) ;
 int IMUCTR_FLUSH ;
 int IMUCTR_MMUEN ;
 int IMUCTR_TTSEL_MMU (int ) ;
 int ipmmu_write (struct ipmmu_vmsa_device*,int ,int) ;

__attribute__((used)) static void ipmmu_utlb_enable(struct ipmmu_vmsa_domain *domain,
         unsigned int utlb)
{
 struct ipmmu_vmsa_device *mmu = domain->mmu;







 ipmmu_write(mmu, IMUASID(utlb), 0);

 ipmmu_write(mmu, IMUCTR(utlb),
      IMUCTR_TTSEL_MMU(domain->context_id) | IMUCTR_FLUSH |
      IMUCTR_MMUEN);
 mmu->utlb_ctx[utlb] = domain->context_id;
}
