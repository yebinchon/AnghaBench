
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_transform {int dummy; } ;
typedef enum dcp_out_trunc_round_mode { ____Placeholder_dcp_out_trunc_round_mode } dcp_out_trunc_round_mode ;
typedef enum dcp_out_trunc_round_depth { ____Placeholder_dcp_out_trunc_round_depth } dcp_out_trunc_round_depth ;


 int BREAK_TO_DEBUGGER () ;
 int OUT_ROUND_CONTROL ;
 int OUT_ROUND_TRUNC_MODE ;
 int REG_SET (int ,int ,int ,int) ;

__attribute__((used)) static void set_round(
 struct dce_transform *xfm_dce,
 enum dcp_out_trunc_round_mode mode,
 enum dcp_out_trunc_round_depth depth)
{
 int depth_bits = 0;
 int mode_bit = 0;


 switch (depth) {
 case 132:
  depth_bits = 6;
  break;
 case 133:
  depth_bits = 7;
  break;
 case 134:
  depth_bits = 0;
  break;
 case 135:
  depth_bits = 1;
  break;
 case 136:
  depth_bits = 2;
  break;
 case 130:
  depth_bits = 3;
  break;
 case 131:
  depth_bits = 4;
  break;
 default:
  depth_bits = 4;
  BREAK_TO_DEBUGGER();
 }


 switch (mode) {
 case 128:
  mode_bit = 0;
  break;
 case 129:
  mode_bit = 1;
  break;
 default:
  BREAK_TO_DEBUGGER();
 }

 depth_bits |= mode_bit << 3;

 REG_SET(OUT_ROUND_CONTROL, 0, OUT_ROUND_TRUNC_MODE, depth_bits);
}
