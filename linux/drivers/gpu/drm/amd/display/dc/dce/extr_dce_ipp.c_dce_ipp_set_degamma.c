
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct input_pixel_processor {int dummy; } ;
struct dce_ipp {int dummy; } ;
typedef enum ipp_degamma_mode { ____Placeholder_ipp_degamma_mode } ipp_degamma_mode ;


 int ASSERT (int) ;
 int CURSOR2_DEGAMMA_MODE ;
 int CURSOR_DEGAMMA_MODE ;
 int DEGAMMA_CONTROL ;
 int GRPH_DEGAMMA_MODE ;
 int IPP_DEGAMMA_MODE_BYPASS ;
 int IPP_DEGAMMA_MODE_HW_sRGB ;
 int REG_SET_3 (int ,int ,int ,int,int ,int,int ,int) ;
 struct dce_ipp* TO_DCE_IPP (struct input_pixel_processor*) ;

__attribute__((used)) static void dce_ipp_set_degamma(
 struct input_pixel_processor *ipp,
 enum ipp_degamma_mode mode)
{
 struct dce_ipp *ipp_dce = TO_DCE_IPP(ipp);
 uint32_t degamma_type = (mode == IPP_DEGAMMA_MODE_HW_sRGB) ? 1 : 0;

 ASSERT(mode == IPP_DEGAMMA_MODE_BYPASS || mode == IPP_DEGAMMA_MODE_HW_sRGB);

 REG_SET_3(DEGAMMA_CONTROL, 0,
    GRPH_DEGAMMA_MODE, degamma_type,
    CURSOR_DEGAMMA_MODE, degamma_type,
    CURSOR2_DEGAMMA_MODE, degamma_type);
}
