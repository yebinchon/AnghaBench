
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct gamma_point {size_t left_index; size_t right_index; int pos; int coeff; } ;
struct pixel_gamma_point {struct gamma_point b; struct gamma_point g; struct gamma_point r; } ;
struct fixed31_32 {int dummy; } ;
struct hw_x_point {struct fixed31_32 regamma_y_blue; struct fixed31_32 regamma_y_green; struct fixed31_32 regamma_y_red; } ;
struct gamma_pixel {struct fixed31_32 b; struct fixed31_32 g; struct fixed31_32 r; } ;
struct dc_gamma {size_t num_entries; } ;
typedef enum hw_point_position { ____Placeholder_hw_point_position } hw_point_position ;
typedef enum channel_name { ____Placeholder_channel_name } channel_name ;


 int BREAK_TO_DEBUGGER () ;
 int CHANNEL_NAME_GREEN ;
 int CHANNEL_NAME_RED ;
 int HW_POINT_POSITION_LEFT ;
 int HW_POINT_POSITION_MIDDLE ;
 int HW_POINT_POSITION_RIGHT ;
 int dc_fixpt_div (int ,int ) ;
 int dc_fixpt_from_int (int) ;
 int dc_fixpt_sub (struct fixed31_32,struct fixed31_32) ;
 int dc_fixpt_zero ;
 int find_software_points (struct dc_gamma const*,struct gamma_pixel const*,struct fixed31_32,int,size_t*,size_t*,size_t*,int*) ;

__attribute__((used)) static bool build_custom_gamma_mapping_coefficients_worker(
 const struct dc_gamma *ramp,
 struct pixel_gamma_point *coeff,
 const struct hw_x_point *coordinates_x,
 const struct gamma_pixel *axis_x,
 enum channel_name channel,
 uint32_t number_of_points)
{
 uint32_t i = 0;

 while (i <= number_of_points) {
  struct fixed31_32 coord_x;

  uint32_t index_to_start = 0;
  uint32_t index_left = 0;
  uint32_t index_right = 0;

  enum hw_point_position hw_pos;

  struct gamma_point *point;

  struct fixed31_32 left_pos;
  struct fixed31_32 right_pos;

  if (channel == CHANNEL_NAME_RED)
   coord_x = coordinates_x[i].regamma_y_red;
  else if (channel == CHANNEL_NAME_GREEN)
   coord_x = coordinates_x[i].regamma_y_green;
  else
   coord_x = coordinates_x[i].regamma_y_blue;

  if (!find_software_points(
   ramp, axis_x, coord_x, channel,
   &index_to_start, &index_left, &index_right, &hw_pos)) {
   BREAK_TO_DEBUGGER();
   return 0;
  }

  if (index_left >= ramp->num_entries + 3) {
   BREAK_TO_DEBUGGER();
   return 0;
  }

  if (index_right >= ramp->num_entries + 3) {
   BREAK_TO_DEBUGGER();
   return 0;
  }

  if (channel == CHANNEL_NAME_RED) {
   point = &coeff[i].r;

   left_pos = axis_x[index_left].r;
   right_pos = axis_x[index_right].r;
  } else if (channel == CHANNEL_NAME_GREEN) {
   point = &coeff[i].g;

   left_pos = axis_x[index_left].g;
   right_pos = axis_x[index_right].g;
  } else {
   point = &coeff[i].b;

   left_pos = axis_x[index_left].b;
   right_pos = axis_x[index_right].b;
  }

  if (hw_pos == HW_POINT_POSITION_MIDDLE)
   point->coeff = dc_fixpt_div(
    dc_fixpt_sub(
     coord_x,
     left_pos),
    dc_fixpt_sub(
     right_pos,
     left_pos));
  else if (hw_pos == HW_POINT_POSITION_LEFT)
   point->coeff = dc_fixpt_zero;
  else if (hw_pos == HW_POINT_POSITION_RIGHT)
   point->coeff = dc_fixpt_from_int(2);
  else {
   BREAK_TO_DEBUGGER();
   return 0;
  }

  point->left_index = index_left;
  point->right_index = index_right;
  point->pos = hw_pos;

  ++i;
 }

 return 1;
}
