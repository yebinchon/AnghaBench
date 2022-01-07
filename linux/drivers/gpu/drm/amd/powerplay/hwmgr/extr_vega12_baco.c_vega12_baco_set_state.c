
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;
typedef enum BACO_STATE { ____Placeholder_BACO_STATE } BACO_STATE ;


 int ARRAY_SIZE (int ) ;
 int BACO_STATE_IN ;
 int BACO_STATE_OUT ;
 int EINVAL ;
 int PPSMC_MSG_EnterBaco ;
 int clean_baco_tbl ;
 int enter_baco_tbl ;
 int exit_baco_tbl ;
 int msleep (int) ;
 int pre_baco_tbl ;
 int smu9_baco_get_state (struct pp_hwmgr*,int*) ;
 scalar_t__ smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;
 scalar_t__ soc15_baco_program_registers (struct pp_hwmgr*,int ,int ) ;

int vega12_baco_set_state(struct pp_hwmgr *hwmgr, enum BACO_STATE state)
{
 enum BACO_STATE cur_state;

 smu9_baco_get_state(hwmgr, &cur_state);

 if (cur_state == state)

  return 0;

 if (state == BACO_STATE_IN) {
  if (soc15_baco_program_registers(hwmgr, pre_baco_tbl,
          ARRAY_SIZE(pre_baco_tbl))) {
   if (smum_send_msg_to_smc_with_parameter(hwmgr, PPSMC_MSG_EnterBaco, 0))
    return -EINVAL;

   if (soc15_baco_program_registers(hwmgr, enter_baco_tbl,
         ARRAY_SIZE(enter_baco_tbl)))
    return 0;
  }
 } else if (state == BACO_STATE_OUT) {

  msleep(20);

  if (soc15_baco_program_registers(hwmgr, exit_baco_tbl,
          ARRAY_SIZE(exit_baco_tbl))) {
   if (soc15_baco_program_registers(hwmgr, clean_baco_tbl,
           ARRAY_SIZE(clean_baco_tbl)))
    return 0;
  }
 }

 return -EINVAL;
}
