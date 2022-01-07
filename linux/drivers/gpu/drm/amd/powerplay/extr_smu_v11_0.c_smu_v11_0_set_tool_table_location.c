
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu_table {scalar_t__ mc_address; } ;
struct TYPE_2__ {struct smu_table* tables; } ;
struct smu_context {TYPE_1__ smu_table; } ;


 int SMU_MSG_SetToolsDramAddrHigh ;
 int SMU_MSG_SetToolsDramAddrLow ;
 size_t SMU_TABLE_PMSTATUSLOG ;
 int lower_32_bits (scalar_t__) ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int ) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int smu_v11_0_set_tool_table_location(struct smu_context *smu)
{
 int ret = 0;
 struct smu_table *tool_table = &smu->smu_table.tables[SMU_TABLE_PMSTATUSLOG];

 if (tool_table->mc_address) {
  ret = smu_send_smc_msg_with_param(smu,
    SMU_MSG_SetToolsDramAddrHigh,
    upper_32_bits(tool_table->mc_address));
  if (!ret)
   ret = smu_send_smc_msg_with_param(smu,
    SMU_MSG_SetToolsDramAddrLow,
    lower_32_bits(tool_table->mc_address));
 }

 return ret;
}
