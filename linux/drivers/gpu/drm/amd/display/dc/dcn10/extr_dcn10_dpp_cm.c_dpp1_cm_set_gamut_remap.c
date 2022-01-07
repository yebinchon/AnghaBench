
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct fixed31_32 {int dummy; } ;
struct dpp_grph_csc_adjustment {scalar_t__ gamut_adjust_type; struct fixed31_32* temperature_matrix; } ;
struct dpp {int dummy; } ;
struct dcn10_dpp {int dummy; } ;


 int GAMUT_REMAP_BYPASS ;
 int GAMUT_REMAP_COEFF ;
 scalar_t__ GRAPHICS_GAMUT_ADJUST_TYPE_SW ;
 struct dcn10_dpp* TO_DCN10_DPP (struct dpp*) ;
 int convert_float_matrix (int *,struct fixed31_32*,int) ;
 int program_gamut_remap (struct dcn10_dpp*,int *,int ) ;

void dpp1_cm_set_gamut_remap(
 struct dpp *dpp_base,
 const struct dpp_grph_csc_adjustment *adjust)
{
 struct dcn10_dpp *dpp = TO_DCN10_DPP(dpp_base);
 int i = 0;

 if (adjust->gamut_adjust_type != GRAPHICS_GAMUT_ADJUST_TYPE_SW)

  program_gamut_remap(dpp, ((void*)0), GAMUT_REMAP_BYPASS);
 else {
  struct fixed31_32 arr_matrix[12];
  uint16_t arr_reg_val[12];

  for (i = 0; i < 12; i++)
   arr_matrix[i] = adjust->temperature_matrix[i];

  convert_float_matrix(
   arr_reg_val, arr_matrix, 12);

  program_gamut_remap(dpp, arr_reg_val, GAMUT_REMAP_COEFF);
 }
}
