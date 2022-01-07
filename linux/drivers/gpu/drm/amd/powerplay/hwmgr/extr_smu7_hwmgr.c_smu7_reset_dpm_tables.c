
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mvdd_table; int vddci_table; int vddc_table; int mclk_table; int sclk_table; } ;
struct smu7_hwmgr {TYPE_1__ dpm_table; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 int MAX_REGULAR_DPM_NUMBER ;
 int SMU_MAX_LEVELS_GRAPHICS ;
 int SMU_MAX_LEVELS_MEMORY ;
 int SMU_MAX_LEVELS_MVDD ;
 int SMU_MAX_LEVELS_VDDC ;
 int SMU_MAX_LEVELS_VDDCI ;
 int memset (TYPE_1__*,int,int) ;
 int phm_reset_single_dpm_table (int *,int ,int ) ;
 int smum_get_mac_definition (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int smu7_reset_dpm_tables(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

 memset(&(data->dpm_table), 0x00, sizeof(data->dpm_table));

 phm_reset_single_dpm_table(
   &data->dpm_table.sclk_table,
    smum_get_mac_definition(hwmgr,
     SMU_MAX_LEVELS_GRAPHICS),
     MAX_REGULAR_DPM_NUMBER);
 phm_reset_single_dpm_table(
   &data->dpm_table.mclk_table,
   smum_get_mac_definition(hwmgr,
    SMU_MAX_LEVELS_MEMORY), MAX_REGULAR_DPM_NUMBER);

 phm_reset_single_dpm_table(
   &data->dpm_table.vddc_table,
    smum_get_mac_definition(hwmgr,
     SMU_MAX_LEVELS_VDDC),
     MAX_REGULAR_DPM_NUMBER);
 phm_reset_single_dpm_table(
   &data->dpm_table.vddci_table,
   smum_get_mac_definition(hwmgr,
    SMU_MAX_LEVELS_VDDCI), MAX_REGULAR_DPM_NUMBER);

 phm_reset_single_dpm_table(
   &data->dpm_table.mvdd_table,
    smum_get_mac_definition(hwmgr,
     SMU_MAX_LEVELS_MVDD),
     MAX_REGULAR_DPM_NUMBER);
 return 0;
}
