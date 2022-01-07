
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;
typedef enum ipp_degamma_mode { ____Placeholder_ipp_degamma_mode } ipp_degamma_mode ;


 int BREAK_TO_DEBUGGER () ;
 int CM_DGAM_CONTROL ;
 int CM_DGAM_LUT_MODE ;



 int REG_UPDATE (int ,int ,int) ;
 struct dcn20_dpp* TO_DCN20_DPP (struct dpp*) ;
 int dpp2_enable_cm_block (struct dpp*) ;

void dpp2_set_degamma(
  struct dpp *dpp_base,
  enum ipp_degamma_mode mode)
{
 struct dcn20_dpp *dpp = TO_DCN20_DPP(dpp_base);
 dpp2_enable_cm_block(dpp_base);

 switch (mode) {
 case 130:

  REG_UPDATE(CM_DGAM_CONTROL, CM_DGAM_LUT_MODE, 0);
  break;
 case 129:
  REG_UPDATE(CM_DGAM_CONTROL, CM_DGAM_LUT_MODE, 1);
  break;
 case 128:
  REG_UPDATE(CM_DGAM_CONTROL, CM_DGAM_LUT_MODE, 2);
   break;
 default:
  BREAK_TO_DEBUGGER();
  break;
 }
}
