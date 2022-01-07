
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmmu_vmsa_domain {struct ipmmu_vmsa_device* mmu; } ;
struct ipmmu_vmsa_device {int * utlb_ctx; } ;


 int IMUCTR (unsigned int) ;
 int IPMMU_CTX_INVALID ;
 int ipmmu_write (struct ipmmu_vmsa_device*,int ,int ) ;

__attribute__((used)) static void ipmmu_utlb_disable(struct ipmmu_vmsa_domain *domain,
          unsigned int utlb)
{
 struct ipmmu_vmsa_device *mmu = domain->mmu;

 ipmmu_write(mmu, IMUCTR(utlb), 0);
 mmu->utlb_ctx[utlb] = IPMMU_CTX_INVALID;
}
