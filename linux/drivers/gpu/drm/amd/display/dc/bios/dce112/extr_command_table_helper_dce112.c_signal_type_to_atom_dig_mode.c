
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;


 int ATOM_TRANSMITTER_DIGMODE_V6_DP ;
 int ATOM_TRANSMITTER_DIGMODE_V6_DP_MST ;
 int ATOM_TRANSMITTER_DIGMODE_V6_DVI ;
 int ATOM_TRANSMITTER_DIGMODE_V6_HDMI ;







__attribute__((used)) static uint8_t signal_type_to_atom_dig_mode(enum signal_type s)
{
 uint8_t atom_dig_mode = ATOM_TRANSMITTER_DIGMODE_V6_DP;

 switch (s) {
 case 133:
 case 129:
  atom_dig_mode = ATOM_TRANSMITTER_DIGMODE_V6_DP;
  break;
 case 130:
 case 131:
  atom_dig_mode = ATOM_TRANSMITTER_DIGMODE_V6_DVI;
  break;
 case 128:
  atom_dig_mode = ATOM_TRANSMITTER_DIGMODE_V6_HDMI;
  break;
 case 132:
  atom_dig_mode = ATOM_TRANSMITTER_DIGMODE_V6_DP_MST;
  break;
 default:
  atom_dig_mode = ATOM_TRANSMITTER_DIGMODE_V6_DVI;
  break;
 }

 return atom_dig_mode;
}
