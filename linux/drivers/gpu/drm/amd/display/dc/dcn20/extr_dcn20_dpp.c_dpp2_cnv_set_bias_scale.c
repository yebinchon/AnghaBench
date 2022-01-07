
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;
struct dc_bias_and_scale {int scale_blue; int scale_green; int scale_red; int bias_blue; int bias_green; int bias_red; } ;


 int FCNV_FP_BIAS_B ;
 int FCNV_FP_BIAS_G ;
 int FCNV_FP_BIAS_R ;
 int FCNV_FP_SCALE_B ;
 int FCNV_FP_SCALE_G ;
 int FCNV_FP_SCALE_R ;
 int REG_UPDATE (int ,int ,int ) ;
 struct dcn20_dpp* TO_DCN20_DPP (struct dpp*) ;

void dpp2_cnv_set_bias_scale(
  struct dpp *dpp_base,
  struct dc_bias_and_scale *bias_and_scale)
{
 struct dcn20_dpp *dpp = TO_DCN20_DPP(dpp_base);

 REG_UPDATE(FCNV_FP_BIAS_R, FCNV_FP_BIAS_R, bias_and_scale->bias_red);
 REG_UPDATE(FCNV_FP_BIAS_G, FCNV_FP_BIAS_G, bias_and_scale->bias_green);
 REG_UPDATE(FCNV_FP_BIAS_B, FCNV_FP_BIAS_B, bias_and_scale->bias_blue);
 REG_UPDATE(FCNV_FP_SCALE_R, FCNV_FP_SCALE_R, bias_and_scale->scale_red);
 REG_UPDATE(FCNV_FP_SCALE_G, FCNV_FP_SCALE_G, bias_and_scale->scale_green);
 REG_UPDATE(FCNV_FP_SCALE_B, FCNV_FP_SCALE_B, bias_and_scale->scale_blue);
}
