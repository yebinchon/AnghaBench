
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_pixel_processor {int dummy; } ;
struct dcn10_opp {int dummy; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;
typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;
typedef enum dc_color_depth { ____Placeholder_dc_color_depth } dc_color_depth ;





 int FMT_DYNAMIC_EXP_CNTL ;
 int FMT_DYNAMIC_EXP_EN ;
 int FMT_DYNAMIC_EXP_MODE ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int SIGNAL_TYPE_DISPLAY_PORT ;
 int SIGNAL_TYPE_DISPLAY_PORT_MST ;
 int SIGNAL_TYPE_HDMI_TYPE_A ;
 int SIGNAL_TYPE_VIRTUAL ;
 struct dcn10_opp* TO_DCN10_OPP (struct output_pixel_processor*) ;

void opp1_set_dyn_expansion(
 struct output_pixel_processor *opp,
 enum dc_color_space color_sp,
 enum dc_color_depth color_dpth,
 enum signal_type signal)
{
 struct dcn10_opp *oppn10 = TO_DCN10_OPP(opp);

 REG_UPDATE_2(FMT_DYNAMIC_EXP_CNTL,
   FMT_DYNAMIC_EXP_EN, 0,
   FMT_DYNAMIC_EXP_MODE, 0);



 if (signal == SIGNAL_TYPE_HDMI_TYPE_A ||
  signal == SIGNAL_TYPE_DISPLAY_PORT ||
  signal == SIGNAL_TYPE_DISPLAY_PORT_MST ||
  signal == SIGNAL_TYPE_VIRTUAL) {
  switch (color_dpth) {
  case 128:
   REG_UPDATE_2(FMT_DYNAMIC_EXP_CNTL,
    FMT_DYNAMIC_EXP_EN, 1,
    FMT_DYNAMIC_EXP_MODE, 1);
   break;
  case 130:
   REG_UPDATE_2(FMT_DYNAMIC_EXP_CNTL,
    FMT_DYNAMIC_EXP_EN, 1,
    FMT_DYNAMIC_EXP_MODE, 0);
   break;
  case 129:
   REG_UPDATE_2(FMT_DYNAMIC_EXP_CNTL,
    FMT_DYNAMIC_EXP_EN, 1,
    FMT_DYNAMIC_EXP_MODE, 0);
   break;
  default:
   break;
  }
 }
}
