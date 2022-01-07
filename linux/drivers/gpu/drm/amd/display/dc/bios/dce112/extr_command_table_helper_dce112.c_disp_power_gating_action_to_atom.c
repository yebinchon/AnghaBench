
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum bp_pipe_control_action { ____Placeholder_bp_pipe_control_action } bp_pipe_control_action ;





 int ASSERT_CRITICAL (int) ;
 int ATOM_DISABLE ;
 int ATOM_ENABLE ;
 int ATOM_INIT ;

__attribute__((used)) static uint8_t disp_power_gating_action_to_atom(
 enum bp_pipe_control_action action)
{
 uint8_t atom_pipe_action = 0;

 switch (action) {
 case 130:
  atom_pipe_action = ATOM_DISABLE;
  break;
 case 129:
  atom_pipe_action = ATOM_ENABLE;
  break;
 case 128:
  atom_pipe_action = ATOM_INIT;
  break;
 default:
  ASSERT_CRITICAL(0);
  break;
 }

 return atom_pipe_action;
}
