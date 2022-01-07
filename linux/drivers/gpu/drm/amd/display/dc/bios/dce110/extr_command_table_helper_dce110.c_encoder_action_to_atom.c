
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum bp_encoder_control_action { ____Placeholder_bp_encoder_control_action } bp_encoder_control_action ;


 int ATOM_DISABLE ;
 int ATOM_ENABLE ;
 int ATOM_ENCODER_CMD_SETUP ;
 int ATOM_ENCODER_INIT ;
 int BREAK_TO_DEBUGGER () ;





__attribute__((used)) static uint8_t encoder_action_to_atom(enum bp_encoder_control_action action)
{
 uint8_t atom_action = 0;

 switch (action) {
 case 130:
  atom_action = ATOM_ENABLE;
  break;
 case 131:
  atom_action = ATOM_DISABLE;
  break;
 case 128:
  atom_action = ATOM_ENCODER_CMD_SETUP;
  break;
 case 129:
  atom_action = ATOM_ENCODER_INIT;
  break;
 default:
  BREAK_TO_DEBUGGER();
  break;
 }

 return atom_action;
}
