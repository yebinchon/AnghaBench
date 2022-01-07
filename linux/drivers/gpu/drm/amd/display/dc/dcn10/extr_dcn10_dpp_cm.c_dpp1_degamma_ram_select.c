
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp {int dummy; } ;
struct dcn10_dpp {int dummy; } ;


 int CM_DGAM_CONTROL ;
 int CM_DGAM_LUT_MODE ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn10_dpp* TO_DCN10_DPP (struct dpp*) ;

void dpp1_degamma_ram_select(
  struct dpp *dpp_base,
       bool use_ram_a)
{
 struct dcn10_dpp *dpp = TO_DCN10_DPP(dpp_base);

 if (use_ram_a)
  REG_UPDATE(CM_DGAM_CONTROL, CM_DGAM_LUT_MODE, 3);
 else
  REG_UPDATE(CM_DGAM_CONTROL, CM_DGAM_LUT_MODE, 4);

}
