
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_transform {int dummy; } ;
typedef enum graphics_csc_adjust_type { ____Placeholder_graphics_csc_adjust_type } graphics_csc_adjust_type ;
typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;
typedef enum csc_color_mode { ____Placeholder_csc_color_mode } csc_color_mode ;
 int CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC ;
 int GRAPHICS_CSC_ADJUST_TYPE_HW ;
 int GRAPHICS_CSC_ADJUST_TYPE_SW ;
 int OUTPUT_CSC_CONTROL ;
 int OUTPUT_CSC_GRPH_MODE ;
 int REG_SET (int ,int ,int ,int) ;

__attribute__((used)) static bool configure_graphics_mode(
 struct dce_transform *xfm_dce,
 enum csc_color_mode config,
 enum graphics_csc_adjust_type csc_adjust_type,
 enum dc_color_space color_space)
{
 REG_SET(OUTPUT_CSC_CONTROL, 0,
  OUTPUT_CSC_GRPH_MODE, 0);

 if (csc_adjust_type == GRAPHICS_CSC_ADJUST_TYPE_SW) {
  if (config == CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC) {
   REG_SET(OUTPUT_CSC_CONTROL, 0,
    OUTPUT_CSC_GRPH_MODE, 4);
  } else {

   switch (color_space) {
   case 133:

    REG_SET(OUTPUT_CSC_CONTROL, 0,
     OUTPUT_CSC_GRPH_MODE, 0);
    break;
   case 132:

    REG_SET(OUTPUT_CSC_CONTROL, 0,
     OUTPUT_CSC_GRPH_MODE, 1);
    break;
   case 131:
   case 130:

    REG_SET(OUTPUT_CSC_CONTROL, 0,
     OUTPUT_CSC_GRPH_MODE, 2);
    break;
   case 129:
   case 128:

    REG_SET(OUTPUT_CSC_CONTROL, 0,
     OUTPUT_CSC_GRPH_MODE, 3);
    break;
   default:
    return 0;
   }
  }
 } else if (csc_adjust_type == GRAPHICS_CSC_ADJUST_TYPE_HW) {
  switch (color_space) {
  case 133:

   REG_SET(OUTPUT_CSC_CONTROL, 0,
    OUTPUT_CSC_GRPH_MODE, 0);
   break;
   break;
  case 132:

   REG_SET(OUTPUT_CSC_CONTROL, 0,
    OUTPUT_CSC_GRPH_MODE, 1);
   break;
  case 131:
  case 130:

   REG_SET(OUTPUT_CSC_CONTROL, 0,
    OUTPUT_CSC_GRPH_MODE, 2);
   break;
  case 129:
  case 128:

   REG_SET(OUTPUT_CSC_CONTROL, 0,
    OUTPUT_CSC_GRPH_MODE, 3);
   break;
  default:
   return 0;
  }

 } else

  REG_SET(OUTPUT_CSC_CONTROL, 0,
   OUTPUT_CSC_GRPH_MODE, 0);

 return 1;
}
