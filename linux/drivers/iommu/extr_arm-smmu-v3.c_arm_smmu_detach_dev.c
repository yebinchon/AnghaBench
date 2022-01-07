
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smmu_master {int ats_enabled; struct arm_smmu_domain* domain; int domain_head; } ;
struct arm_smmu_domain {int devices_lock; } ;


 int arm_smmu_disable_ats (struct arm_smmu_master*) ;
 int arm_smmu_install_ste_for_dev (struct arm_smmu_master*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void arm_smmu_detach_dev(struct arm_smmu_master *master)
{
 unsigned long flags;
 struct arm_smmu_domain *smmu_domain = master->domain;

 if (!smmu_domain)
  return;

 arm_smmu_disable_ats(master);

 spin_lock_irqsave(&smmu_domain->devices_lock, flags);
 list_del(&master->domain_head);
 spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);

 master->domain = ((void*)0);
 master->ats_enabled = 0;
 arm_smmu_install_ste_for_dev(master);
}
