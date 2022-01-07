
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int dummy; } ;
typedef enum smu_v11_0_baco_seq { ____Placeholder_smu_v11_0_baco_seq } smu_v11_0_baco_seq ;


 int SMU_MSG_ArmD3 ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int) ;

__attribute__((used)) static int smu_v11_0_baco_set_armd3_sequence(struct smu_context *smu, enum smu_v11_0_baco_seq baco_seq)
{
 return smu_send_smc_msg_with_param(smu, SMU_MSG_ArmD3, baco_seq);
}
