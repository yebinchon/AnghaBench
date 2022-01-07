
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_cursor_attributes {int scale; int bias; } ;
struct dpp {int dummy; } ;
struct dcn10_dpp {int dummy; } ;


 int CUR0_FP_BIAS ;
 int CUR0_FP_SCALE ;
 int CURSOR0_FP_SCALE_BIAS ;
 int REG_UPDATE (int ,int ,int ) ;
 struct dcn10_dpp* TO_DCN10_DPP (struct dpp*) ;

void dpp1_cnv_set_optional_cursor_attributes(
  struct dpp *dpp_base,
  struct dpp_cursor_attributes *attr)
{
 struct dcn10_dpp *dpp = TO_DCN10_DPP(dpp_base);

 if (attr) {
  REG_UPDATE(CURSOR0_FP_SCALE_BIAS, CUR0_FP_BIAS, attr->bias);
  REG_UPDATE(CURSOR0_FP_SCALE_BIAS, CUR0_FP_SCALE, attr->scale);
 }
}
