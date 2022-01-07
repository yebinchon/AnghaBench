
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pwl_result_data {int delta_blue_reg; int delta_blue; int delta_green_reg; int delta_green; int delta_red_reg; int delta_red; int blue_reg; int blue; int green_reg; int green; int red_reg; int red; } ;
struct custom_float_format {int exponenta_bits; int mantissa_bits; int sign; } ;
struct curve_points {int custom_float_slope; int slope; int custom_float_y; int y; int custom_float_x; int x; int custom_float_offset; int offset; } ;


 int BREAK_TO_DEBUGGER () ;
 int convert_to_custom_float_format (int ,struct custom_float_format*,int *) ;

__attribute__((used)) static bool convert_to_custom_float(struct pwl_result_data *rgb_resulted,
        struct curve_points *arr_points,
        uint32_t hw_points_num)
{
 struct custom_float_format fmt;

 struct pwl_result_data *rgb = rgb_resulted;

 uint32_t i = 0;

 fmt.exponenta_bits = 6;
 fmt.mantissa_bits = 12;
 fmt.sign = 1;

 if (!convert_to_custom_float_format(arr_points[0].x, &fmt,
         &arr_points[0].custom_float_x)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }

 if (!convert_to_custom_float_format(arr_points[0].offset, &fmt,
         &arr_points[0].custom_float_offset)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }

 if (!convert_to_custom_float_format(arr_points[0].slope, &fmt,
         &arr_points[0].custom_float_slope)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }

 fmt.mantissa_bits = 10;
 fmt.sign = 0;

 if (!convert_to_custom_float_format(arr_points[1].x, &fmt,
         &arr_points[1].custom_float_x)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }

 if (!convert_to_custom_float_format(arr_points[1].y, &fmt,
         &arr_points[1].custom_float_y)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }

 if (!convert_to_custom_float_format(arr_points[1].slope, &fmt,
         &arr_points[1].custom_float_slope)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }

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
