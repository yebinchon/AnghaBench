
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;


 int ATOM_ENCODER_MODE_CRT ;
 int ATOM_ENCODER_MODE_DP ;
 int ATOM_ENCODER_MODE_DP_AUDIO ;
 int ATOM_ENCODER_MODE_DVI ;
 int ATOM_ENCODER_MODE_HDMI ;
 int ATOM_ENCODER_MODE_LVDS ;
uint32_t dal_cmd_table_helper_encoder_mode_bp_to_atom(
 enum signal_type s,
 bool enable_dp_audio)
{
 switch (s) {
 case 133:
 case 134:
  return ATOM_ENCODER_MODE_DVI;
 case 131:
  return ATOM_ENCODER_MODE_HDMI;
 case 130:
  return ATOM_ENCODER_MODE_LVDS;
 case 132:
 case 135:
 case 136:
 case 128:
  if (enable_dp_audio)
   return ATOM_ENCODER_MODE_DP_AUDIO;
  else
   return ATOM_ENCODER_MODE_DP;
 case 129:
  return ATOM_ENCODER_MODE_CRT;
 default:
  return ATOM_ENCODER_MODE_CRT;
 }
}
