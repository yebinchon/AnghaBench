
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {scalar_t__ MemoryBootLevel; scalar_t__ GraphicsBootLevel; } ;
struct tonga_smumgr {TYPE_2__ smc_state_table; } ;
struct TYPE_10__ {int mvdd_bootup_value; int vddci_bootup_value; int vddgfx_bootup_value; int vddc_bootup_value; int mclk_bootup_value; int sclk_bootup_value; } ;
struct TYPE_7__ {int mclk_table; int sclk_table; } ;
struct smu7_hwmgr {TYPE_4__ vbios_boot_state; int vddci_voltage_table; int vddgfx_voltage_table; int vddc_voltage_table; TYPE_1__ dpm_table; } ;
struct pp_hwmgr {scalar_t__ smu_backend; scalar_t__ backend; } ;
struct TYPE_9__ {void* Vddci; void* VddGfx; void* Vddc; } ;
struct TYPE_11__ {int BootMVdd; TYPE_3__ BootVoltage; scalar_t__ MemoryBootLevel; scalar_t__ GraphicsBootLevel; } ;
typedef TYPE_5__ SMU72_Discrete_DpmTable ;


 int CONVERT_FROM_HOST_TO_SMC_US (int ) ;
 int phm_find_boot_level (int *,int ,int *) ;
 void* phm_get_voltage_id (int *,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int tonga_populate_smc_boot_level(struct pp_hwmgr *hwmgr,
   SMU72_Discrete_DpmTable *table)
{
 int result = 0;
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 struct tonga_smumgr *smu_data =
    (struct tonga_smumgr *)(hwmgr->smu_backend);
 table->GraphicsBootLevel = 0;
 table->MemoryBootLevel = 0;


 result = phm_find_boot_level(&(data->dpm_table.sclk_table),
 data->vbios_boot_state.sclk_bootup_value,
 (uint32_t *)&(smu_data->smc_state_table.GraphicsBootLevel));

 if (result != 0) {
  smu_data->smc_state_table.GraphicsBootLevel = 0;
  pr_err("[powerplay] VBIOS did not find boot engine "
    "clock value in dependency table. "
    "Using Graphics DPM level 0 !");
  result = 0;
 }

 result = phm_find_boot_level(&(data->dpm_table.mclk_table),
  data->vbios_boot_state.mclk_bootup_value,
  (uint32_t *)&(smu_data->smc_state_table.MemoryBootLevel));

 if (result != 0) {
  smu_data->smc_state_table.MemoryBootLevel = 0;
  pr_err("[powerplay] VBIOS did not find boot "
    "engine clock value in dependency table."
    "Using Memory DPM level 0 !");
  result = 0;
 }

 table->BootVoltage.Vddc =
  phm_get_voltage_id(&(data->vddc_voltage_table),
   data->vbios_boot_state.vddc_bootup_value);
 table->BootVoltage.VddGfx =
  phm_get_voltage_id(&(data->vddgfx_voltage_table),
   data->vbios_boot_state.vddgfx_bootup_value);
 table->BootVoltage.Vddci =
  phm_get_voltage_id(&(data->vddci_voltage_table),
   data->vbios_boot_state.vddci_bootup_value);
 table->BootMVdd = data->vbios_boot_state.mvdd_bootup_value;

 CONVERT_FROM_HOST_TO_SMC_US(table->BootMVdd);

 return result;
}
