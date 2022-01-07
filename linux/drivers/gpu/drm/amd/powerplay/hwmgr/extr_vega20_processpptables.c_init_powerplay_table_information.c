
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_12__ {int platformCaps; scalar_t__ TDPODLimit; } ;
struct TYPE_9__ {int ulMaxRPM; scalar_t__ ulMinRPM; } ;
struct TYPE_10__ {scalar_t__ ucType; TYPE_1__ fanInfo; } ;
struct pp_hwmgr {TYPE_4__ platform_descriptor; TYPE_2__ thermal_controller; scalar_t__ pptable; } ;
struct phm_ppt_v3_information {scalar_t__ uc_thermal_controller_type; int * smc_pptable; int power_saving_clock_min; int power_saving_clock_max; void* us_software_shutdown_temp; void* us_od_powersave_power_limit; void* us_od_turbo_power_limit; void* us_boost_power_limit; void* us_small_power_limit2; void* us_small_power_limit1; int od_settings_min; int od_settings_max; int od_feature_capabilities; } ;
struct TYPE_15__ {int FanMaximumRpm; } ;
struct TYPE_13__ {int ucTableRevision; int PowerSavingClockMin; int PowerSavingClockMax; int PowerSavingClockCount; } ;
struct TYPE_11__ {int ucODTableRevision; int * ODSettingsMax; int * ODSettingsMin; int ODFeatureCapabilities; int ODSettingCount; int ODFeatureCount; } ;
struct TYPE_14__ {scalar_t__ ucThermalControllerType; TYPE_7__ smcPPTable; TYPE_5__ PowerSavingClockTable; TYPE_3__ OverDrive8Table; int usSoftwareShutdownTemp; int usODPowerSavePowerLimit; int usODTurboPowerLimit; int usBoostPowerLimit; int usSmallPowerLimit2; int usSmallPowerLimit1; } ;
typedef int PPTable_t ;
typedef TYPE_6__ ATOM_Vega20_POWERPLAYTABLE ;


 scalar_t__ ATOM_VEGA20_ODFEATURE_COUNT ;
 scalar_t__ ATOM_VEGA20_ODSETTING_COUNT ;
 size_t ATOM_VEGA20_ODSETTING_POWERPERCENTAGE ;
 scalar_t__ ATOM_VEGA20_PPCLOCK_COUNT ;
 scalar_t__ ATOM_VEGA20_PP_THERMALCONTROLLER_NONE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PHM_PlatformCaps_MicrocodeFanControl ;
 int PHM_PlatformCaps_PowerControl ;
 int PHM_PlatformCaps_ThermalController ;
 int append_vbios_pptable (struct pp_hwmgr*,int *) ;
 int copy_overdrive_feature_capabilities_array (struct pp_hwmgr*,int *,int ,scalar_t__) ;
 scalar_t__ kmalloc (int,int ) ;
 void* le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int memcpy (int *,TYPE_7__*,int) ;
 int override_powerplay_table_fantargettemperature (struct pp_hwmgr*) ;
 int phm_cap_set (int ,int ) ;
 int phm_copy_clock_limits_array (struct pp_hwmgr*,int *,int ,scalar_t__) ;
 int phm_copy_overdrive_settings_limits_array (struct pp_hwmgr*,int *,int *,scalar_t__) ;
 int set_hw_cap (struct pp_hwmgr*,int,int ) ;

__attribute__((used)) static int init_powerplay_table_information(
  struct pp_hwmgr *hwmgr,
  const ATOM_Vega20_POWERPLAYTABLE *powerplay_table)
{
 struct phm_ppt_v3_information *pptable_information =
  (struct phm_ppt_v3_information *)hwmgr->pptable;
 uint32_t disable_power_control = 0;
 uint32_t od_feature_count, od_setting_count, power_saving_clock_count;
 int result;

 hwmgr->thermal_controller.ucType = powerplay_table->ucThermalControllerType;
 pptable_information->uc_thermal_controller_type = powerplay_table->ucThermalControllerType;
 hwmgr->thermal_controller.fanInfo.ulMinRPM = 0;
 hwmgr->thermal_controller.fanInfo.ulMaxRPM = powerplay_table->smcPPTable.FanMaximumRpm;

 set_hw_cap(hwmgr,
  ATOM_VEGA20_PP_THERMALCONTROLLER_NONE != hwmgr->thermal_controller.ucType,
  PHM_PlatformCaps_ThermalController);

 phm_cap_set(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_MicrocodeFanControl);

 if (powerplay_table->OverDrive8Table.ucODTableRevision == 1) {
  od_feature_count =
   (le32_to_cpu(powerplay_table->OverDrive8Table.ODFeatureCount) >
    ATOM_VEGA20_ODFEATURE_COUNT) ?
   ATOM_VEGA20_ODFEATURE_COUNT :
   le32_to_cpu(powerplay_table->OverDrive8Table.ODFeatureCount);
  od_setting_count =
   (le32_to_cpu(powerplay_table->OverDrive8Table.ODSettingCount) >
    ATOM_VEGA20_ODSETTING_COUNT) ?
   ATOM_VEGA20_ODSETTING_COUNT :
   le32_to_cpu(powerplay_table->OverDrive8Table.ODSettingCount);

  copy_overdrive_feature_capabilities_array(hwmgr,
    &pptable_information->od_feature_capabilities,
    powerplay_table->OverDrive8Table.ODFeatureCapabilities,
    od_feature_count);
  phm_copy_overdrive_settings_limits_array(hwmgr,
    &pptable_information->od_settings_max,
    powerplay_table->OverDrive8Table.ODSettingsMax,
    od_setting_count);
  phm_copy_overdrive_settings_limits_array(hwmgr,
    &pptable_information->od_settings_min,
    powerplay_table->OverDrive8Table.ODSettingsMin,
    od_setting_count);
 }

 pptable_information->us_small_power_limit1 = le16_to_cpu(powerplay_table->usSmallPowerLimit1);
 pptable_information->us_small_power_limit2 = le16_to_cpu(powerplay_table->usSmallPowerLimit2);
 pptable_information->us_boost_power_limit = le16_to_cpu(powerplay_table->usBoostPowerLimit);
 pptable_information->us_od_turbo_power_limit = le16_to_cpu(powerplay_table->usODTurboPowerLimit);
 pptable_information->us_od_powersave_power_limit = le16_to_cpu(powerplay_table->usODPowerSavePowerLimit);

 pptable_information->us_software_shutdown_temp = le16_to_cpu(powerplay_table->usSoftwareShutdownTemp);

 hwmgr->platform_descriptor.TDPODLimit = le32_to_cpu(powerplay_table->OverDrive8Table.ODSettingsMax[ATOM_VEGA20_ODSETTING_POWERPERCENTAGE]);

 disable_power_control = 0;
 if (!disable_power_control && hwmgr->platform_descriptor.TDPODLimit)

  phm_cap_set(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_PowerControl);

 if (powerplay_table->PowerSavingClockTable.ucTableRevision == 1) {
  power_saving_clock_count =
   (le32_to_cpu(powerplay_table->PowerSavingClockTable.PowerSavingClockCount) >=
    ATOM_VEGA20_PPCLOCK_COUNT) ?
   ATOM_VEGA20_PPCLOCK_COUNT :
   le32_to_cpu(powerplay_table->PowerSavingClockTable.PowerSavingClockCount);
  phm_copy_clock_limits_array(hwmgr,
    &pptable_information->power_saving_clock_max,
    powerplay_table->PowerSavingClockTable.PowerSavingClockMax,
    power_saving_clock_count);
  phm_copy_clock_limits_array(hwmgr,
    &pptable_information->power_saving_clock_min,
    powerplay_table->PowerSavingClockTable.PowerSavingClockMin,
    power_saving_clock_count);
 }

 pptable_information->smc_pptable = (PPTable_t *)kmalloc(sizeof(PPTable_t), GFP_KERNEL);
 if (pptable_information->smc_pptable == ((void*)0))
  return -ENOMEM;

 memcpy(pptable_information->smc_pptable,
   &(powerplay_table->smcPPTable),
   sizeof(PPTable_t));


 result = append_vbios_pptable(hwmgr, (pptable_information->smc_pptable));
 if (result)
  return result;

 result = override_powerplay_table_fantargettemperature(hwmgr);

 return result;
}
