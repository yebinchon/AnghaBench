
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum controller_id { ____Placeholder_controller_id } controller_id ;


 int ATOM_CRTC1 ;
 int ATOM_CRTC2 ;
 int ATOM_CRTC3 ;
 int ATOM_CRTC4 ;
 int ATOM_CRTC5 ;
 int ATOM_CRTC6 ;
 int ATOM_CRTC_INVALID ;
 int ATOM_UNDERLAY_PIPE0 ;
 int BREAK_TO_DEBUGGER () ;
bool dal_cmd_table_helper_controller_id_to_atom(
 enum controller_id id,
 uint8_t *atom_id)
{
 if (atom_id == ((void*)0)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }

 switch (id) {
 case 135:
  *atom_id = ATOM_CRTC1;
  return 1;
 case 134:
  *atom_id = ATOM_CRTC2;
  return 1;
 case 133:
  *atom_id = ATOM_CRTC3;
  return 1;
 case 132:
  *atom_id = ATOM_CRTC4;
  return 1;
 case 131:
  *atom_id = ATOM_CRTC5;
  return 1;
 case 130:
  *atom_id = ATOM_CRTC6;
  return 1;
 case 128:
  *atom_id = ATOM_UNDERLAY_PIPE0;
  return 1;
 case 129:
  *atom_id = ATOM_CRTC_INVALID;
  return 1;
 default:

  BREAK_TO_DEBUGGER();
  return 0;
 }
}
