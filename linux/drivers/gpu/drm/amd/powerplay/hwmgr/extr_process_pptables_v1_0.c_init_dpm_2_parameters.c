
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ TDPODLimit; int VidMaxLimit; int VidStep; int platformCaps; scalar_t__ VidMinLimit; scalar_t__ VidAdjustmentPolarity; scalar_t__ VidAdjustment; scalar_t__ TDPAdjustment; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; scalar_t__ pptable; } ;
struct phm_ppt_v1_information {int * vddgfx_lookup_table; int * vddc_lookup_table; int * ppm_parameter_table; void* us_ulv_voltage_offset; } ;
struct TYPE_5__ {scalar_t__ usUlvVoltageOffset; scalar_t__ usPowerControlLimit; scalar_t__ usVddcLookupTableOffset; scalar_t__ usVddgfxLookupTableOffset; scalar_t__ usPPMTableOffset; } ;
typedef int ATOM_Tonga_Voltage_Lookup_Table ;
typedef int ATOM_Tonga_PPM_Table ;
typedef TYPE_2__ ATOM_Tonga_POWERPLAYTABLE ;


 int PHM_PlatformCaps_EnablePlatformPowerManagement ;
 int PHM_PlatformCaps_PowerControl ;
 scalar_t__ get_platform_power_management_table (struct pp_hwmgr*,int *) ;
 int get_vddc_lookup_table (struct pp_hwmgr*,int **,int const*,int) ;
 void* le16_to_cpu (scalar_t__) ;
 int phm_cap_set (int ,int ) ;

__attribute__((used)) static int init_dpm_2_parameters(
  struct pp_hwmgr *hwmgr,
  const ATOM_Tonga_POWERPLAYTABLE *powerplay_table
  )
{
 int result = 0;
 struct phm_ppt_v1_information *pp_table_information = (struct phm_ppt_v1_information *)(hwmgr->pptable);
 ATOM_Tonga_PPM_Table *atom_ppm_table;
 uint32_t disable_ppm = 0;
 uint32_t disable_power_control = 0;

 pp_table_information->us_ulv_voltage_offset =
  le16_to_cpu(powerplay_table->usUlvVoltageOffset);

 pp_table_information->ppm_parameter_table = ((void*)0);
 pp_table_information->vddc_lookup_table = ((void*)0);
 pp_table_information->vddgfx_lookup_table = ((void*)0);

 hwmgr->platform_descriptor.TDPODLimit =
  le16_to_cpu(powerplay_table->usPowerControlLimit);
 hwmgr->platform_descriptor.TDPAdjustment = 0;
 hwmgr->platform_descriptor.VidAdjustment = 0;
 hwmgr->platform_descriptor.VidAdjustmentPolarity = 0;
 hwmgr->platform_descriptor.VidMinLimit = 0;
 hwmgr->platform_descriptor.VidMaxLimit = 1500000;
 hwmgr->platform_descriptor.VidStep = 6250;

 disable_power_control = 0;
 if (0 == disable_power_control) {

  if (hwmgr->platform_descriptor.TDPODLimit != 0)
   phm_cap_set(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_PowerControl);
 }

 if (0 != powerplay_table->usVddcLookupTableOffset) {
  const ATOM_Tonga_Voltage_Lookup_Table *pVddcCACTable =
   (ATOM_Tonga_Voltage_Lookup_Table *)(((unsigned long)powerplay_table) +
   le16_to_cpu(powerplay_table->usVddcLookupTableOffset));

  result = get_vddc_lookup_table(hwmgr,
   &pp_table_information->vddc_lookup_table, pVddcCACTable, 16);
 }

 if (0 != powerplay_table->usVddgfxLookupTableOffset) {
  const ATOM_Tonga_Voltage_Lookup_Table *pVddgfxCACTable =
   (ATOM_Tonga_Voltage_Lookup_Table *)(((unsigned long)powerplay_table) +
   le16_to_cpu(powerplay_table->usVddgfxLookupTableOffset));

  result = get_vddc_lookup_table(hwmgr,
   &pp_table_information->vddgfx_lookup_table, pVddgfxCACTable, 16);
 }

 disable_ppm = 0;
 if (0 == disable_ppm) {
  atom_ppm_table = (ATOM_Tonga_PPM_Table *)
   (((unsigned long)powerplay_table) + le16_to_cpu(powerplay_table->usPPMTableOffset));

  if (0 != powerplay_table->usPPMTableOffset) {
   if (get_platform_power_management_table(hwmgr, atom_ppm_table) == 0) {
    phm_cap_set(hwmgr->platform_descriptor.platformCaps,
     PHM_PlatformCaps_EnablePlatformPowerManagement);
   }
  }
 }

 return result;
}
