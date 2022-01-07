
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct transform {int dummy; } ;
struct out_csc_color_matrix {int color_space; } ;
struct default_adjustment {int force_hw_default; int color_depth; int out_color_space; int csc_adjust_type; int in_color_space; } ;
struct dce_transform {int dummy; } ;
typedef enum grph_color_adjust_option { ____Placeholder_grph_color_adjust_option } grph_color_adjust_option ;
typedef enum csc_color_mode { ____Placeholder_csc_color_mode } csc_color_mode ;


 size_t ARRAY_SIZE (struct out_csc_color_matrix*) ;
 int CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC ;
 int CSC_COLOR_MODE_GRAPHICS_PREDEFINED ;
 int GRPH_COLOR_MATRIX_HW_DEFAULT ;
 int GRPH_COLOR_MATRIX_SW ;
 struct dce_transform* TO_DCE_TRANSFORM (struct transform*) ;
 int configure_graphics_mode_v (struct dce_transform*,int,int ,int ) ;
 struct out_csc_color_matrix* global_color_matrix ;
 int program_color_matrix_v (struct dce_transform*,struct out_csc_color_matrix const*,int) ;
 int program_input_csc (struct transform*,int ) ;
 int set_Denormalization (struct transform*,int ) ;

void dce110_opp_v_set_csc_default(
 struct transform *xfm,
 const struct default_adjustment *default_adjust)
{
 struct dce_transform *xfm_dce = TO_DCE_TRANSFORM(xfm);
 enum csc_color_mode config =
   CSC_COLOR_MODE_GRAPHICS_PREDEFINED;

 if (default_adjust->force_hw_default == 0) {
  const struct out_csc_color_matrix *elm;

  enum grph_color_adjust_option option =
   GRPH_COLOR_MATRIX_HW_DEFAULT;
  uint32_t i;






  option = GRPH_COLOR_MATRIX_SW;

  for (i = 0; i < ARRAY_SIZE(global_color_matrix); ++i) {
   elm = &global_color_matrix[i];
   if (elm->color_space != default_adjust->out_color_space)
    continue;



   program_color_matrix_v(xfm_dce, elm, option);
   config = CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC;
   break;
  }
 }

 program_input_csc(xfm, default_adjust->in_color_space);







 configure_graphics_mode_v(xfm_dce, config,
  default_adjust->csc_adjust_type,
  default_adjust->out_color_space);

 set_Denormalization(xfm, default_adjust->color_depth);
}
