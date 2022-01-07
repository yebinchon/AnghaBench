
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct pp_hwmgr {scalar_t__ smu_backend; } ;
struct TYPE_2__ {int arb_table_start; } ;
struct polaris10_smumgr {TYPE_1__ smu7_data; } ;


 scalar_t__ MC_CG_ARB_FREQ_F1 ;
 int SMC_RAM_END ;
 int smu7_read_smc_sram_dword (struct pp_hwmgr*,int ,int*,int ) ;
 int smu7_write_smc_sram_dword (struct pp_hwmgr*,int ,int,int ) ;

__attribute__((used)) static int polaris10_init_arb_table_index(struct pp_hwmgr *hwmgr)
{
 struct polaris10_smumgr *smu_data = (struct polaris10_smumgr *)(hwmgr->smu_backend);
 uint32_t tmp;
 int result;
 result = smu7_read_smc_sram_dword(hwmgr,
   smu_data->smu7_data.arb_table_start, &tmp, SMC_RAM_END);

 if (result)
  return result;

 tmp &= 0x00FFFFFF;
 tmp |= ((uint32_t)MC_CG_ARB_FREQ_F1) << 24;

 return smu7_write_smc_sram_dword(hwmgr,
   smu_data->smu7_data.arb_table_start, tmp, SMC_RAM_END);
}
