
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp {int dummy; } ;
struct dcn10_dpp {int dummy; } ;
struct dc_bias_and_scale {int bias_blue; int scale_blue; int bias_green; int scale_green; int bias_red; int scale_red; } ;


 int CM_BNS_BIAS_B ;
 int CM_BNS_BIAS_G ;
 int CM_BNS_BIAS_R ;
 int CM_BNS_SCALE_B ;
 int CM_BNS_SCALE_G ;
 int CM_BNS_SCALE_R ;
 int CM_BNS_VALUES_B ;
 int CM_BNS_VALUES_G ;
 int CM_BNS_VALUES_R ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int ) ;
 struct dcn10_dpp* TO_DCN10_DPP (struct dpp*) ;

void dpp1_program_bias_and_scale(
 struct dpp *dpp_base,
 struct dc_bias_and_scale *params)
{
 struct dcn10_dpp *dpp = TO_DCN10_DPP(dpp_base);

 REG_SET_2(CM_BNS_VALUES_R, 0,
  CM_BNS_SCALE_R, params->scale_red,
  CM_BNS_BIAS_R, params->bias_red);

 REG_SET_2(CM_BNS_VALUES_G, 0,
  CM_BNS_SCALE_G, params->scale_green,
  CM_BNS_BIAS_G, params->bias_green);

 REG_SET_2(CM_BNS_VALUES_B, 0,
  CM_BNS_SCALE_B, params->scale_blue,
  CM_BNS_BIAS_B, params->bias_blue);

}
