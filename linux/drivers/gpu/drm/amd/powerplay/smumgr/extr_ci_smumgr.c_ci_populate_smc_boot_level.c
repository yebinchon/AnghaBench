
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int mvdd_bootup_value; int vddci_bootup_value; int vddc_bootup_value; int mclk_bootup_value; int sclk_bootup_value; } ;
struct TYPE_6__ {int mclk_table; int sclk_table; } ;
struct smu7_hwmgr {TYPE_3__ vbios_boot_state; TYPE_1__ dpm_table; } ;
struct pp_hwmgr {scalar_t__ smu_backend; scalar_t__ backend; } ;
struct TYPE_7__ {scalar_t__ MemoryBootLevel; scalar_t__ GraphicsBootLevel; } ;
struct ci_smumgr {TYPE_2__ smc_state_table; } ;
struct TYPE_9__ {int BootMVdd; int BootVddci; int BootVddc; scalar_t__ MemoryBootLevel; scalar_t__ GraphicsBootLevel; } ;
typedef TYPE_4__ SMU7_Discrete_DpmTable ;


 int phm_find_boot_level (int *,int ,int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int ci_populate_smc_boot_level(struct pp_hwmgr *hwmgr,
   SMU7_Discrete_DpmTable *table)
{
 int result = 0;
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 struct ci_smumgr *smu_data = (struct ci_smumgr *)(hwmgr->smu_backend);

 table->GraphicsBootLevel = 0;
 table->MemoryBootLevel = 0;


 result = phm_find_boot_level(&(data->dpm_table.sclk_table),
   data->vbios_boot_state.sclk_bootup_value,
   (uint32_t *)&(smu_data->smc_state_table.GraphicsBootLevel));

 if (0 != result) {
  smu_data->smc_state_table.GraphicsBootLevel = 0;
  pr_err("VBIOS did not find boot engine clock value in dependency table. Using Graphics DPM level 0!\n");
  result = 0;
 }

 result = phm_find_boot_level(&(data->dpm_table.mclk_table),
  data->vbios_boot_state.mclk_bootup_value,
  (uint32_t *)&(smu_data->smc_state_table.MemoryBootLevel));

 if (0 != result) {
  smu_data->smc_state_table.MemoryBootLevel = 0;
  pr_err("VBIOS did not find boot engine clock value in dependency table. Using Memory DPM level 0!\n");
  result = 0;
 }

 table->BootVddc = data->vbios_boot_state.vddc_bootup_value;
 table->BootVddci = data->vbios_boot_state.vddci_bootup_value;
 table->BootMVdd = data->vbios_boot_state.mvdd_bootup_value;

 return result;
}
