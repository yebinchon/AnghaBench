
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;


 int ATOM_TRANSMITTER_DIGMODE_V5_DP ;
 int ATOM_TRANSMITTER_DIGMODE_V5_DP_MST ;
 int ATOM_TRANSMITTER_DIGMODE_V5_DVI ;
 int ATOM_TRANSMITTER_DIGMODE_V5_HDMI ;
 int ATOM_TRANSMITTER_DIGMODE_V5_LVDS ;
__attribute__((used)) static uint8_t signal_type_to_atom_dig_mode(enum signal_type s)
{
 uint8_t atom_dig_mode = ATOM_TRANSMITTER_DIGMODE_V5_DP;

 switch (s) {
 case 134:
 case 130:
  atom_dig_mode = ATOM_TRANSMITTER_DIGMODE_V5_DP;
  break;
 case 128:
  atom_dig_mode = ATOM_TRANSMITTER_DIGMODE_V5_LVDS;
  break;
 case 131:
 case 132:
  atom_dig_mode = ATOM_TRANSMITTER_DIGMODE_V5_DVI;
  break;
 case 129:
  atom_dig_mode = ATOM_TRANSMITTER_DIGMODE_V5_HDMI;
  break;
 case 133:
  atom_dig_mode = ATOM_TRANSMITTER_DIGMODE_V5_DP_MST;
  break;
 default:
  atom_dig_mode = ATOM_TRANSMITTER_DIGMODE_V5_DVI;
  break;
 }

 return atom_dig_mode;
}
