
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct pwl_result_data {void* delta_blue_reg; int delta_blue; void* delta_green_reg; int delta_green; void* delta_red_reg; int delta_red; void* blue_reg; int blue; void* green_reg; int green; void* red_reg; int red; } ;
struct custom_float_format {int exponenta_bits; int mantissa_bits; int sign; } ;
struct TYPE_5__ {void* custom_float_slope; int slope; void* custom_float_y; int y; void* custom_float_x; int x; void* custom_float_offset; int offset; } ;
struct TYPE_4__ {void* custom_float_slope; int slope; void* custom_float_y; int y; void* custom_float_x; int x; void* custom_float_offset; int offset; } ;
struct TYPE_6__ {void* custom_float_slope; int slope; void* custom_float_y; int y; void* custom_float_x; int x; void* custom_float_offset; int offset; } ;
struct curve_points3 {TYPE_2__ blue; TYPE_1__ green; TYPE_3__ red; } ;


 int BREAK_TO_DEBUGGER () ;
 int convert_to_custom_float_format (int ,struct custom_float_format*,void**) ;
 void* dc_fixpt_clamp_u0d14 (int ) ;

bool cm_helper_convert_to_custom_float(
  struct pwl_result_data *rgb_resulted,
  struct curve_points3 *corner_points,
  uint32_t hw_points_num,
  bool fixpoint)
{
 struct custom_float_format fmt;

 struct pwl_result_data *rgb = rgb_resulted;

 uint32_t i = 0;

 fmt.exponenta_bits = 6;
 fmt.mantissa_bits = 12;
 fmt.sign = 0;




 if (!convert_to_custom_float_format(corner_points[0].red.x, &fmt,
    &corner_points[0].red.custom_float_x)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }
 if (!convert_to_custom_float_format(corner_points[0].green.x, &fmt,
    &corner_points[0].green.custom_float_x)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }
 if (!convert_to_custom_float_format(corner_points[0].blue.x, &fmt,
    &corner_points[0].blue.custom_float_x)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }

 if (!convert_to_custom_float_format(corner_points[0].red.offset, &fmt,
    &corner_points[0].red.custom_float_offset)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }
 if (!convert_to_custom_float_format(corner_points[0].green.offset, &fmt,
    &corner_points[0].green.custom_float_offset)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }
 if (!convert_to_custom_float_format(corner_points[0].blue.offset, &fmt,
    &corner_points[0].blue.custom_float_offset)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }

 if (!convert_to_custom_float_format(corner_points[0].red.slope, &fmt,
    &corner_points[0].red.custom_float_slope)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }
 if (!convert_to_custom_float_format(corner_points[0].green.slope, &fmt,
    &corner_points[0].green.custom_float_slope)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }
 if (!convert_to_custom_float_format(corner_points[0].blue.slope, &fmt,
    &corner_points[0].blue.custom_float_slope)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }

 fmt.mantissa_bits = 10;
 fmt.sign = 0;

 if (!convert_to_custom_float_format(corner_points[1].red.x, &fmt,
    &corner_points[1].red.custom_float_x)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }
 if (!convert_to_custom_float_format(corner_points[1].green.x, &fmt,
    &corner_points[1].green.custom_float_x)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }
 if (!convert_to_custom_float_format(corner_points[1].blue.x, &fmt,
    &corner_points[1].blue.custom_float_x)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }

 if (fixpoint == 1) {
  corner_points[1].red.custom_float_y =
    dc_fixpt_clamp_u0d14(corner_points[1].red.y);
  corner_points[1].green.custom_float_y =
    dc_fixpt_clamp_u0d14(corner_points[1].green.y);
  corner_points[1].blue.custom_float_y =
    dc_fixpt_clamp_u0d14(corner_points[1].blue.y);
 } else {
  if (!convert_to_custom_float_format(corner_points[1].red.y,
    &fmt, &corner_points[1].red.custom_float_y)) {
   BREAK_TO_DEBUGGER();
   return 0;
  }
  if (!convert_to_custom_float_format(corner_points[1].green.y,
    &fmt, &corner_points[1].green.custom_float_y)) {
   BREAK_TO_DEBUGGER();
   return 0;
  }
  if (!convert_to_custom_float_format(corner_points[1].blue.y,
    &fmt, &corner_points[1].blue.custom_float_y)) {
   BREAK_TO_DEBUGGER();
   return 0;
  }
 }

 if (!convert_to_custom_float_format(corner_points[1].red.slope, &fmt,
    &corner_points[1].red.custom_float_slope)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }
 if (!convert_to_custom_float_format(corner_points[1].green.slope, &fmt,
    &corner_points[1].green.custom_float_slope)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }
 if (!convert_to_custom_float_format(corner_points[1].blue.slope, &fmt,
    &corner_points[1].blue.custom_float_slope)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }

 if (hw_points_num == 0 || rgb_resulted == ((void*)0) || fixpoint == 1)
  return 1;

 fmt.mantissa_bits = 12;
 fmt.sign = 1;

 while (i != hw_points_num) {
  if (!convert_to_custom_float_format(rgb->red, &fmt,
          &rgb->red_reg)) {
   BREAK_TO_DEBUGGER();
   return 0;
  }

  if (!convert_to_custom_float_format(rgb->green, &fmt,
          &rgb->green_reg)) {
   BREAK_TO_DEBUGGER();
   return 0;
  }

  if (!convert_to_custom_float_format(rgb->blue, &fmt,
          &rgb->blue_reg)) {
   BREAK_TO_DEBUGGER();
   return 0;
  }

  if (!convert_to_custom_float_format(rgb->delta_red, &fmt,
          &rgb->delta_red_reg)) {
   BREAK_TO_DEBUGGER();
   return 0;
  }

  if (!convert_to_custom_float_format(rgb->delta_green, &fmt,
          &rgb->delta_green_reg)) {
   BREAK_TO_DEBUGGER();
   return 0;
  }

  if (!convert_to_custom_float_format(rgb->delta_blue, &fmt,
          &rgb->delta_blue_reg)) {
   BREAK_TO_DEBUGGER();
   return 0;
  }

  ++rgb;
  ++i;
 }

 return 1;
}
