
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpp {int dummy; } ;
struct dcn10_dpp {TYPE_1__* tf_mask; } ;
struct TYPE_2__ {scalar_t__ CM_BYPASS_EN; } ;


 int CM_BYPASS ;
 int CM_BYPASS_EN ;
 int CM_CONTROL ;
 int CM_DGAM_CONTROL ;
 int CM_DGAM_LUT_MODE ;
 int CNVC_BYPASS ;
 int CNVC_SURFACE_PIXEL_FORMAT ;
 int FORMAT_CONTROL ;
 int FORMAT_CONTROL__ALPHA_EN ;
 int FORMAT_EXPANSION_MODE ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_SET_3 (int ,int ,int ,int ,int ,int ,int ,int ) ;
 struct dcn10_dpp* TO_DCN10_DPP (struct dpp*) ;

void dpp1_full_bypass(struct dpp *dpp_base)
{
 struct dcn10_dpp *dpp = TO_DCN10_DPP(dpp_base);


 REG_SET(CNVC_SURFACE_PIXEL_FORMAT, 0,
   CNVC_SURFACE_PIXEL_FORMAT, 0x8);


 REG_SET_3(FORMAT_CONTROL, 0,
   CNVC_BYPASS, 0,
   FORMAT_CONTROL__ALPHA_EN, 0,
   FORMAT_EXPANSION_MODE, 0);


 if (dpp->tf_mask->CM_BYPASS_EN)
  REG_SET(CM_CONTROL, 0, CM_BYPASS_EN, 1);






 REG_SET(CM_DGAM_CONTROL, 0, CM_DGAM_LUT_MODE, 0);
}
