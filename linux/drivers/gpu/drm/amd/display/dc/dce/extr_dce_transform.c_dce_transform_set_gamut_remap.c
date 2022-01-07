
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct xfm_grph_csc_adjustment {scalar_t__ gamut_adjust_type; struct fixed31_32* temperature_matrix; } ;
struct transform {int dummy; } ;
struct fixed31_32 {int dummy; } ;
struct dce_transform {int dummy; } ;


 int GAMUT_MATRIX_SIZE ;
 scalar_t__ GRAPHICS_GAMUT_ADJUST_TYPE_SW ;
 struct dce_transform* TO_DCE_TRANSFORM (struct transform*) ;
 int convert_float_matrix (int *,struct fixed31_32*,int) ;
 int program_gamut_remap (struct dce_transform*,int *) ;

__attribute__((used)) static void dce_transform_set_gamut_remap(
 struct transform *xfm,
 const struct xfm_grph_csc_adjustment *adjust)
{
 struct dce_transform *xfm_dce = TO_DCE_TRANSFORM(xfm);
 int i = 0;

 if (adjust->gamut_adjust_type != GRAPHICS_GAMUT_ADJUST_TYPE_SW)

  program_gamut_remap(xfm_dce, ((void*)0));
 else {
  struct fixed31_32 arr_matrix[GAMUT_MATRIX_SIZE];
  uint16_t arr_reg_val[GAMUT_MATRIX_SIZE];

  for (i = 0; i < GAMUT_MATRIX_SIZE; i++)
   arr_matrix[i] = adjust->temperature_matrix[i];

  convert_float_matrix(
   arr_reg_val, arr_matrix, GAMUT_MATRIX_SIZE);

  program_gamut_remap(xfm_dce, arr_reg_val);
 }
}
