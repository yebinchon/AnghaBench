
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vega10_hwmgr {int config_telemetry; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;


 int PHM_PlatformCaps_ThermalController ;
 int PPSMC_MSG_ConfigureTelemetry ;
 int PP_ASSERT (int,char*) ;
 int PP_ASSERT_WITH_CODE (int,char*,int) ;
 scalar_t__ PP_CAP (int ) ;
 int SMC_DPM_FEATURES ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;
 int vega10_construct_voltage_tables (struct pp_hwmgr*) ;
 int vega10_enable_deep_sleep_master_switch (struct pp_hwmgr*) ;
 int vega10_enable_didt_config (struct pp_hwmgr*) ;
 int vega10_enable_disable_PCC_limit_feature (struct pp_hwmgr*,int) ;
 int vega10_enable_power_containment (struct pp_hwmgr*) ;
 int vega10_enable_thermal_protection (struct pp_hwmgr*) ;
 int vega10_enable_ulv (struct pp_hwmgr*) ;
 int vega10_enable_vrhot_feature (struct pp_hwmgr*) ;
 int vega10_init_smc_table (struct pp_hwmgr*) ;
 int vega10_power_control_set_level (struct pp_hwmgr*) ;
 int vega10_start_dpm (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int vega10_enable_dpm_tasks(struct pp_hwmgr *hwmgr)
{
 struct vega10_hwmgr *data = hwmgr->backend;
 int tmp_result, result = 0;

 vega10_enable_disable_PCC_limit_feature(hwmgr, 1);

 smum_send_msg_to_smc_with_parameter(hwmgr,
  PPSMC_MSG_ConfigureTelemetry, data->config_telemetry);

 tmp_result = vega10_construct_voltage_tables(hwmgr);
 PP_ASSERT_WITH_CODE(!tmp_result,
   "Failed to construct voltage tables!",
   result = tmp_result);

 tmp_result = vega10_init_smc_table(hwmgr);
 PP_ASSERT_WITH_CODE(!tmp_result,
   "Failed to initialize SMC table!",
   result = tmp_result);

 if (PP_CAP(PHM_PlatformCaps_ThermalController)) {
  tmp_result = vega10_enable_thermal_protection(hwmgr);
  PP_ASSERT_WITH_CODE(!tmp_result,
    "Failed to enable thermal protection!",
    result = tmp_result);
 }

 tmp_result = vega10_enable_vrhot_feature(hwmgr);
 PP_ASSERT_WITH_CODE(!tmp_result,
   "Failed to enable VR hot feature!",
   result = tmp_result);

 tmp_result = vega10_enable_deep_sleep_master_switch(hwmgr);
 PP_ASSERT_WITH_CODE(!tmp_result,
   "Failed to enable deep sleep master switch!",
   result = tmp_result);

 tmp_result = vega10_start_dpm(hwmgr, SMC_DPM_FEATURES);
 PP_ASSERT_WITH_CODE(!tmp_result,
   "Failed to start DPM!", result = tmp_result);


 tmp_result = vega10_enable_didt_config(hwmgr);
 PP_ASSERT(!tmp_result,
   "Failed to enable didt config!");

 tmp_result = vega10_enable_power_containment(hwmgr);
 PP_ASSERT_WITH_CODE(!tmp_result,
   "Failed to enable power containment!",
   result = tmp_result);

 tmp_result = vega10_power_control_set_level(hwmgr);
 PP_ASSERT_WITH_CODE(!tmp_result,
   "Failed to power control set level!",
   result = tmp_result);

 tmp_result = vega10_enable_ulv(hwmgr);
 PP_ASSERT_WITH_CODE(!tmp_result,
   "Failed to enable ULV!",
   result = tmp_result);

 return result;
}
