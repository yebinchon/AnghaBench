
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ vmid; } ;
struct TYPE_5__ {int asid; } ;
struct TYPE_6__ {TYPE_1__ cd; } ;
struct arm_smmu_domain {scalar_t__ stage; TYPE_4__ s2_cfg; TYPE_2__ s1_cfg; struct arm_smmu_device* smmu; } ;
struct arm_smmu_device {int dummy; } ;
struct TYPE_7__ {scalar_t__ vmid; int asid; } ;
struct arm_smmu_cmdq_ent {TYPE_3__ tlbi; int opcode; } ;


 scalar_t__ ARM_SMMU_DOMAIN_S1 ;
 int CMDQ_OP_TLBI_NH_ASID ;
 int CMDQ_OP_TLBI_S12_VMALL ;
 int arm_smmu_atc_inv_domain (struct arm_smmu_domain*,int ,int ,int ) ;
 int arm_smmu_cmdq_issue_cmd (struct arm_smmu_device*,struct arm_smmu_cmdq_ent*) ;
 int arm_smmu_cmdq_issue_sync (struct arm_smmu_device*) ;

__attribute__((used)) static void arm_smmu_tlb_inv_context(void *cookie)
{
 struct arm_smmu_domain *smmu_domain = cookie;
 struct arm_smmu_device *smmu = smmu_domain->smmu;
 struct arm_smmu_cmdq_ent cmd;

 if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1) {
  cmd.opcode = CMDQ_OP_TLBI_NH_ASID;
  cmd.tlbi.asid = smmu_domain->s1_cfg.cd.asid;
  cmd.tlbi.vmid = 0;
 } else {
  cmd.opcode = CMDQ_OP_TLBI_S12_VMALL;
  cmd.tlbi.vmid = smmu_domain->s2_cfg.vmid;
 }
 arm_smmu_cmdq_issue_cmd(smmu, &cmd);
 arm_smmu_cmdq_issue_sync(smmu);
 arm_smmu_atc_inv_domain(smmu_domain, 0, 0, 0);
}
