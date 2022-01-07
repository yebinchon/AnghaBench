
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_transform {int dummy; } ;
typedef enum dc_color_depth { ____Placeholder_dc_color_depth } dc_color_depth ;


 int BREAK_TO_DEBUGGER () ;




 int OUT_CLAMP_CONTROL_B_CB ;
 int OUT_CLAMP_CONTROL_G_Y ;
 int OUT_CLAMP_CONTROL_R_CR ;
 int OUT_CLAMP_MAX_B_CB ;
 int OUT_CLAMP_MAX_G_Y ;
 int OUT_CLAMP_MAX_R_CR ;
 int OUT_CLAMP_MIN_B_CB ;
 int OUT_CLAMP_MIN_G_Y ;
 int OUT_CLAMP_MIN_R_CR ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static void set_clamp(
 struct dce_transform *xfm_dce,
 enum dc_color_depth depth)
{
 int clamp_max = 0;






 switch (depth) {
 case 129:

  clamp_max = 0x3F00;
  break;
 case 128:

  clamp_max = 0x3FC0;
  break;
 case 131:

  clamp_max = 0x3FFC;
  break;
 case 130:

  clamp_max = 0x3FFF;
  break;
 default:
  clamp_max = 0x3FC0;
  BREAK_TO_DEBUGGER();
 }
 REG_SET_2(OUT_CLAMP_CONTROL_B_CB, 0,
   OUT_CLAMP_MIN_B_CB, 0,
   OUT_CLAMP_MAX_B_CB, clamp_max);

 REG_SET_2(OUT_CLAMP_CONTROL_G_Y, 0,
   OUT_CLAMP_MIN_G_Y, 0,
   OUT_CLAMP_MAX_G_Y, clamp_max);

 REG_SET_2(OUT_CLAMP_CONTROL_R_CR, 0,
   OUT_CLAMP_MIN_R_CR, 0,
   OUT_CLAMP_MAX_R_CR, clamp_max);
}
