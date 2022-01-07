
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int cc6_setting_changed; int cpu_pstate_separation_time; scalar_t__ cpu_pstate_disable; scalar_t__ cpu_cc6_disable; } ;
struct smu8_hwmgr {TYPE_1__ cc6_settings; } ;
struct pp_hwmgr {struct smu8_hwmgr* backend; } ;


 int PPSMC_MSG_SetDisplaySizePowerParams ;
 int PP_DBG_LOG (char*,int) ;
 int PWRMGT_DISABLE_CPU_CSTATES_SHIFT ;
 int PWRMGT_DISABLE_CPU_PSTATES_SHIFT ;
 int PWRMGT_SEPARATION_TIME_MASK ;
 int PWRMGT_SEPARATION_TIME_SHIFT ;
 int smu8_hw_print_display_cfg (TYPE_1__*) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static int smu8_set_cpu_power_state(struct pp_hwmgr *hwmgr)
{
 struct smu8_hwmgr *hw_data = hwmgr->backend;
 uint32_t data = 0;

 if (hw_data->cc6_settings.cc6_setting_changed) {

  hw_data->cc6_settings.cc6_setting_changed = 0;

  smu8_hw_print_display_cfg(&hw_data->cc6_settings);

  data |= (hw_data->cc6_settings.cpu_pstate_separation_time
   & PWRMGT_SEPARATION_TIME_MASK)
   << PWRMGT_SEPARATION_TIME_SHIFT;

  data |= (hw_data->cc6_settings.cpu_cc6_disable ? 0x1 : 0x0)
   << PWRMGT_DISABLE_CPU_CSTATES_SHIFT;

  data |= (hw_data->cc6_settings.cpu_pstate_disable ? 0x1 : 0x0)
   << PWRMGT_DISABLE_CPU_PSTATES_SHIFT;

  PP_DBG_LOG("SetDisplaySizePowerParams data: 0x%X\n",
   data);

  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetDisplaySizePowerParams,
      data);
 }

 return 0;
}
