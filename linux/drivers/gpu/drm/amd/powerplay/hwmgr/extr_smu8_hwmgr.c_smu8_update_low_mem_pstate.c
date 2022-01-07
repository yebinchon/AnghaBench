
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smu8_power_state {scalar_t__ action; } ;
struct TYPE_4__ {scalar_t__ nb_pstate_switch_disable; } ;
struct TYPE_3__ {scalar_t__ nb_dpm_enable; } ;
struct smu8_hwmgr {TYPE_2__ cc6_settings; TYPE_1__ sys_info; } ;
struct pp_hwmgr {struct smu8_hwmgr* backend; } ;
struct phm_set_power_state_input {int pnew_state; } ;


 scalar_t__ CANCEL_FORCE_HIGH ;
 scalar_t__ FORCE_HIGH ;
 struct smu8_power_state* cast_const_smu8_power_state (int ) ;
 int smu8_nbdpm_pstate_enable_disable (struct pp_hwmgr*,int,int) ;

__attribute__((used)) static int smu8_update_low_mem_pstate(struct pp_hwmgr *hwmgr, const void *input)
{
 bool disable_switch;
 bool enable_low_mem_state;
 struct smu8_hwmgr *hw_data = hwmgr->backend;
 const struct phm_set_power_state_input *states = (struct phm_set_power_state_input *)input;
 const struct smu8_power_state *pnew_state = cast_const_smu8_power_state(states->pnew_state);

 if (hw_data->sys_info.nb_dpm_enable) {
  disable_switch = hw_data->cc6_settings.nb_pstate_switch_disable ? 1 : 0;
  enable_low_mem_state = hw_data->cc6_settings.nb_pstate_switch_disable ? 0 : 1;

  if (pnew_state->action == FORCE_HIGH)
   smu8_nbdpm_pstate_enable_disable(hwmgr, 0, disable_switch);
  else if (pnew_state->action == CANCEL_FORCE_HIGH)
   smu8_nbdpm_pstate_enable_disable(hwmgr, 1, disable_switch);
  else
   smu8_nbdpm_pstate_enable_disable(hwmgr, enable_low_mem_state, disable_switch);
 }
 return 0;
}
