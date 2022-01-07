
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smmu_master {int dev; int ats_enabled; struct arm_smmu_domain* domain; } ;
struct arm_smmu_domain {int nr_ats_masters; } ;
struct arm_smmu_cmdq_ent {int dummy; } ;


 int arm_smmu_atc_inv_master (struct arm_smmu_master*,struct arm_smmu_cmdq_ent*) ;
 int arm_smmu_atc_inv_to_cmd (int ,int ,int ,struct arm_smmu_cmdq_ent*) ;
 int atomic_dec (int *) ;
 int pci_disable_ats (int ) ;
 int to_pci_dev (int ) ;
 int wmb () ;

__attribute__((used)) static void arm_smmu_disable_ats(struct arm_smmu_master *master)
{
 struct arm_smmu_cmdq_ent cmd;
 struct arm_smmu_domain *smmu_domain = master->domain;

 if (!master->ats_enabled)
  return;

 pci_disable_ats(to_pci_dev(master->dev));




 wmb();
 arm_smmu_atc_inv_to_cmd(0, 0, 0, &cmd);
 arm_smmu_atc_inv_master(master, &cmd);
 atomic_dec(&smmu_domain->nr_ats_masters);
}
