
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {struct dc_context* ctx; } ;
struct dce_transform {TYPE_1__ base; } ;
struct dc_context {int dummy; } ;
typedef enum graphics_csc_adjust_type { ____Placeholder_graphics_csc_adjust_type } graphics_csc_adjust_type ;
typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;
typedef enum csc_color_mode { ____Placeholder_csc_color_mode } csc_color_mode ;
 int COL_MAN_OUTPUT_CSC_CONTROL ;
 int CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC ;
 int GRAPHICS_CSC_ADJUST_TYPE_HW ;
 int GRAPHICS_CSC_ADJUST_TYPE_SW ;
 int OUTPUT_CSC_MODE ;
 int dm_read_reg (struct dc_context*,int ) ;
 int dm_write_reg (struct dc_context*,int ,int ) ;
 int mmCOL_MAN_OUTPUT_CSC_CONTROL ;
 int set_reg_field_value (int ,int,int ,int ) ;

__attribute__((used)) static bool configure_graphics_mode_v(
 struct dce_transform *xfm_dce,
 enum csc_color_mode config,
 enum graphics_csc_adjust_type csc_adjust_type,
 enum dc_color_space color_space)
{
 struct dc_context *ctx = xfm_dce->base.ctx;
 uint32_t addr = mmCOL_MAN_OUTPUT_CSC_CONTROL;
 uint32_t value = dm_read_reg(ctx, addr);

 set_reg_field_value(
  value,
  0,
  COL_MAN_OUTPUT_CSC_CONTROL,
  OUTPUT_CSC_MODE);

 if (csc_adjust_type == GRAPHICS_CSC_ADJUST_TYPE_SW) {
  if (config == CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC)
   return 1;

  switch (color_space) {
  case 133:

   set_reg_field_value(
    value,
    0,
    COL_MAN_OUTPUT_CSC_CONTROL,
    OUTPUT_CSC_MODE);
   break;
  case 132:

   return 0;

  case 130:

   set_reg_field_value(
    value,
    2,
    COL_MAN_OUTPUT_CSC_CONTROL,
    OUTPUT_CSC_MODE);
   break;
  case 129:
  case 128:

   set_reg_field_value(
    value,
    3,
    COL_MAN_OUTPUT_CSC_CONTROL,
    OUTPUT_CSC_MODE);
   break;
  default:
   return 0;
  }

 } else if (csc_adjust_type == GRAPHICS_CSC_ADJUST_TYPE_HW) {
  switch (color_space) {
  case 133:

   set_reg_field_value(
    value,
    0,
    COL_MAN_OUTPUT_CSC_CONTROL,
    OUTPUT_CSC_MODE);
   break;
  case 132:

   return 0;
  case 131:
  case 130:

   set_reg_field_value(
    value,
    2,
    COL_MAN_OUTPUT_CSC_CONTROL,
    OUTPUT_CSC_MODE);
   break;
  case 129:
  case 128:

   set_reg_field_value(
    value,
    3,
    COL_MAN_OUTPUT_CSC_CONTROL,
    OUTPUT_CSC_MODE);
   break;
  default:
   return 0;
  }

 } else

  set_reg_field_value(
   value,
   0,
   COL_MAN_OUTPUT_CSC_CONTROL,
   OUTPUT_CSC_MODE);

 addr = mmCOL_MAN_OUTPUT_CSC_CONTROL;
 dm_write_reg(ctx, addr, value);

 return 1;
}
