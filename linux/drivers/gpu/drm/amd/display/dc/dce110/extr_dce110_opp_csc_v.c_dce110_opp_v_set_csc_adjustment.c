
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transform {int dummy; } ;
struct out_csc_color_matrix {int color_space; } ;
struct dce_transform {int dummy; } ;
typedef enum csc_color_mode { ____Placeholder_csc_color_mode } csc_color_mode ;


 int CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC ;
 int GRAPHICS_CSC_ADJUST_TYPE_SW ;
 int GRPH_COLOR_MATRIX_SW ;
 struct dce_transform* TO_DCE_TRANSFORM (struct transform*) ;
 int configure_graphics_mode_v (struct dce_transform*,int,int ,int ) ;
 int program_color_matrix_v (struct dce_transform*,struct out_csc_color_matrix const*,int ) ;

void dce110_opp_v_set_csc_adjustment(
 struct transform *xfm,
 const struct out_csc_color_matrix *tbl_entry)
{
 struct dce_transform *xfm_dce = TO_DCE_TRANSFORM(xfm);
 enum csc_color_mode config =
   CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC;

 program_color_matrix_v(
   xfm_dce, tbl_entry, GRPH_COLOR_MATRIX_SW);


 configure_graphics_mode_v(xfm_dce, config, GRAPHICS_CSC_ADJUST_TYPE_SW,
   tbl_entry->color_space);



}
