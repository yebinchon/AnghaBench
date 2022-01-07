
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu8_smumgr {unsigned long scratch_buffer_length; int toc_entry_clock_table; TYPE_1__* scratch_buffer; } ;
struct pp_hwmgr {struct smu8_smumgr* smu_backend; } ;
struct SMU8_Fusion_ClkTable {int dummy; } ;
struct TYPE_2__ {scalar_t__ firmware_ID; int mc_addr; scalar_t__ kaddr; } ;


 int PPSMC_MSG_ClkTableXferToDram ;
 int PPSMC_MSG_ExecuteJob ;
 int PPSMC_MSG_SetClkTableAddrHi ;
 int PPSMC_MSG_SetClkTableAddrLo ;
 scalar_t__ SMU8_SCRATCH_ENTRY_SMU8_FUSION_CLKTABLE ;
 int lower_32_bits (int ) ;
 int smu8_send_msg_to_smc (struct pp_hwmgr*,int ) ;
 int smu8_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int smu8_download_pptable_settings(struct pp_hwmgr *hwmgr, void **table)
{
 struct smu8_smumgr *smu8_smu = hwmgr->smu_backend;
 unsigned long i;

 for (i = 0; i < smu8_smu->scratch_buffer_length; i++) {
  if (smu8_smu->scratch_buffer[i].firmware_ID
   == SMU8_SCRATCH_ENTRY_SMU8_FUSION_CLKTABLE)
   break;
 }

 *table = (struct SMU8_Fusion_ClkTable *)smu8_smu->scratch_buffer[i].kaddr;

 smu8_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_SetClkTableAddrHi,
    upper_32_bits(smu8_smu->scratch_buffer[i].mc_addr));

 smu8_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_SetClkTableAddrLo,
    lower_32_bits(smu8_smu->scratch_buffer[i].mc_addr));

 smu8_send_msg_to_smc_with_parameter(hwmgr, PPSMC_MSG_ExecuteJob,
    smu8_smu->toc_entry_clock_table);

 smu8_send_msg_to_smc(hwmgr, PPSMC_MSG_ClkTableXferToDram);

 return 0;
}
