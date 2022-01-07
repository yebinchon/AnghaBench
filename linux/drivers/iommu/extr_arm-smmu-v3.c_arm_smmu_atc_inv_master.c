
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arm_smmu_master {int num_sids; int smmu; int * sids; int ats_enabled; } ;
struct TYPE_2__ {int sid; } ;
struct arm_smmu_cmdq_ent {TYPE_1__ atc; } ;


 int arm_smmu_cmdq_issue_cmd (int ,struct arm_smmu_cmdq_ent*) ;
 int arm_smmu_cmdq_issue_sync (int ) ;

__attribute__((used)) static int arm_smmu_atc_inv_master(struct arm_smmu_master *master,
       struct arm_smmu_cmdq_ent *cmd)
{
 int i;

 if (!master->ats_enabled)
  return 0;

 for (i = 0; i < master->num_sids; i++) {
  cmd->atc.sid = master->sids[i];
  arm_smmu_cmdq_issue_cmd(master->smmu, cmd);
 }

 return arm_smmu_cmdq_issue_sync(master->smmu);
}
