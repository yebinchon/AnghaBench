
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pwl_float_data_ex {int b; int g; int r; } ;
struct hw_x_point {int regamma_y_blue; int regamma_y_green; int regamma_y_red; } ;



__attribute__((used)) static inline void copy_rgb_regamma_to_coordinates_x(
  struct hw_x_point *coordinates_x,
  uint32_t hw_points_num,
  const struct pwl_float_data_ex *rgb_ex)
{
 struct hw_x_point *coords = coordinates_x;
 uint32_t i = 0;
 const struct pwl_float_data_ex *rgb_regamma = rgb_ex;

 while (i <= hw_points_num + 1) {
  coords->regamma_y_red = rgb_regamma->r;
  coords->regamma_y_green = rgb_regamma->g;
  coords->regamma_y_blue = rgb_regamma->b;

  ++coords;
  ++rgb_regamma;
  ++i;
 }
}
