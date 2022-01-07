
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmmu_vmsa_domain {int dummy; } ;
struct ipmmu_vmsa_device {int num_ctx; int lock; int ctx; struct ipmmu_vmsa_domain** domains; } ;


 int EBUSY ;
 int find_first_zero_bit (int ,int) ;
 int set_bit (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ipmmu_domain_allocate_context(struct ipmmu_vmsa_device *mmu,
      struct ipmmu_vmsa_domain *domain)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&mmu->lock, flags);

 ret = find_first_zero_bit(mmu->ctx, mmu->num_ctx);
 if (ret != mmu->num_ctx) {
  mmu->domains[ret] = domain;
  set_bit(ret, mmu->ctx);
 } else
  ret = -EBUSY;

 spin_unlock_irqrestore(&mmu->lock, flags);

 return ret;
}
