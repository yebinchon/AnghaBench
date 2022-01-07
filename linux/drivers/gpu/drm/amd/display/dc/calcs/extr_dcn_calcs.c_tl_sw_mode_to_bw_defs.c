
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum swizzle_mode_values { ____Placeholder_swizzle_mode_values } swizzle_mode_values ;
typedef enum dcn_bw_defs { ____Placeholder_dcn_bw_defs } dcn_bw_defs ;


 int BREAK_TO_DEBUGGER () ;
 int dcn_bw_sw_4_kb_d ;
 int dcn_bw_sw_4_kb_d_x ;
 int dcn_bw_sw_4_kb_s ;
 int dcn_bw_sw_4_kb_s_x ;
 int dcn_bw_sw_64_kb_d ;
 int dcn_bw_sw_64_kb_d_t ;
 int dcn_bw_sw_64_kb_d_x ;
 int dcn_bw_sw_64_kb_s ;
 int dcn_bw_sw_64_kb_s_t ;
 int dcn_bw_sw_64_kb_s_x ;
 int dcn_bw_sw_linear ;
 int dcn_bw_sw_var_d ;
 int dcn_bw_sw_var_d_x ;
 int dcn_bw_sw_var_s ;
 int dcn_bw_sw_var_s_x ;

__attribute__((used)) static enum dcn_bw_defs tl_sw_mode_to_bw_defs(enum swizzle_mode_values sw_mode)
{
 switch (sw_mode) {
 case 134:
  return dcn_bw_sw_linear;
 case 144:
  return dcn_bw_sw_4_kb_s;
 case 148:
  return dcn_bw_sw_4_kb_d;
 case 137:
  return dcn_bw_sw_64_kb_s;
 case 142:
  return dcn_bw_sw_64_kb_d;
 case 129:
  return dcn_bw_sw_var_s;
 case 133:
  return dcn_bw_sw_var_d;
 case 136:
  return dcn_bw_sw_64_kb_s_t;
 case 141:
  return dcn_bw_sw_64_kb_d_t;
 case 143:
  return dcn_bw_sw_4_kb_s_x;
 case 147:
  return dcn_bw_sw_4_kb_d_x;
 case 135:
  return dcn_bw_sw_64_kb_s_x;
 case 140:
  return dcn_bw_sw_64_kb_d_x;
 case 128:
  return dcn_bw_sw_var_s_x;
 case 132:
  return dcn_bw_sw_var_d_x;
 case 151:
 case 150:
 case 149:
 case 146:
 case 139:
 case 131:
 case 145:
 case 138:
 case 130:
 default:
  BREAK_TO_DEBUGGER();
  return dcn_bw_sw_4_kb_s;
 }
}
