
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp {int dummy; } ;
struct dcn_dpp_state {void* gamut_remap_c33_c34; void* gamut_remap_c31_c32; void* gamut_remap_c23_c24; void* gamut_remap_c21_c22; void* gamut_remap_c13_c14; void* gamut_remap_c11_c12; scalar_t__ gamut_remap_mode; scalar_t__ rgam_lut_mode; scalar_t__ dgam_lut_mode; scalar_t__ igam_input_format; scalar_t__ igam_lut_mode; scalar_t__ is_enabled; } ;
struct dcn10_dpp {int dummy; } ;


 int CM_DGAM_CONTROL ;
 int CM_DGAM_LUT_MODE ;
 int CM_GAMUT_REMAP_C11_C12 ;
 int CM_GAMUT_REMAP_C13_C14 ;
 int CM_GAMUT_REMAP_C21_C22 ;
 int CM_GAMUT_REMAP_C23_C24 ;
 int CM_GAMUT_REMAP_C31_C32 ;
 int CM_GAMUT_REMAP_C33_C34 ;
 int CM_GAMUT_REMAP_CONTROL ;
 int CM_GAMUT_REMAP_MODE ;
 int CM_IGAM_CONTROL ;
 int CM_IGAM_INPUT_FORMAT ;
 int CM_IGAM_LUT_MODE ;
 int CM_RGAM_CONTROL ;
 int CM_RGAM_LUT_MODE ;
 int DPP_CLOCK_ENABLE ;
 int DPP_CONTROL ;
 int REG_GET (int ,int ,scalar_t__*) ;
 void* REG_READ (int ) ;
 struct dcn10_dpp* TO_DCN10_DPP (struct dpp*) ;

void dpp_read_state(struct dpp *dpp_base,
  struct dcn_dpp_state *s)
{
 struct dcn10_dpp *dpp = TO_DCN10_DPP(dpp_base);

 REG_GET(DPP_CONTROL,
   DPP_CLOCK_ENABLE, &s->is_enabled);
 REG_GET(CM_IGAM_CONTROL,
   CM_IGAM_LUT_MODE, &s->igam_lut_mode);
 REG_GET(CM_IGAM_CONTROL,
   CM_IGAM_INPUT_FORMAT, &s->igam_input_format);
 REG_GET(CM_DGAM_CONTROL,
   CM_DGAM_LUT_MODE, &s->dgam_lut_mode);
 REG_GET(CM_RGAM_CONTROL,
   CM_RGAM_LUT_MODE, &s->rgam_lut_mode);
 REG_GET(CM_GAMUT_REMAP_CONTROL,
   CM_GAMUT_REMAP_MODE, &s->gamut_remap_mode);

 if (s->gamut_remap_mode) {
  s->gamut_remap_c11_c12 = REG_READ(CM_GAMUT_REMAP_C11_C12);
  s->gamut_remap_c13_c14 = REG_READ(CM_GAMUT_REMAP_C13_C14);
  s->gamut_remap_c21_c22 = REG_READ(CM_GAMUT_REMAP_C21_C22);
  s->gamut_remap_c23_c24 = REG_READ(CM_GAMUT_REMAP_C23_C24);
  s->gamut_remap_c31_c32 = REG_READ(CM_GAMUT_REMAP_C31_C32);
  s->gamut_remap_c33_c34 = REG_READ(CM_GAMUT_REMAP_C33_C34);
 }
}
