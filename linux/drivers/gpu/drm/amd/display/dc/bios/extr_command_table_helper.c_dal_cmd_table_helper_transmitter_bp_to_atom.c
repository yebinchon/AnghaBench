
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum transmitter { ____Placeholder_transmitter } transmitter ;


 int BREAK_TO_DEBUGGER () ;
uint8_t dal_cmd_table_helper_transmitter_bp_to_atom(
 enum transmitter t)
{
 switch (t) {
 case 133:
 case 132:
 case 134:
  return 0;
 case 131:
 case 130:
  return 1;
 case 129:
 case 128:
  return 2;
 default:

  BREAK_TO_DEBUGGER();
  return 0;
 }
}
