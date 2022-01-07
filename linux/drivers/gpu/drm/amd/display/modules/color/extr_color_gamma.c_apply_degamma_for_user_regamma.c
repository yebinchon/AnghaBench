
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pwl_float_data_ex {int r; int b; int g; } ;
struct hw_x_point {int x; } ;
struct gamma_coefficients {int dummy; } ;


 int build_coefficients (struct gamma_coefficients*,int) ;
 struct hw_x_point* coordinates_x ;
 int translate_from_linear_space_ex (int ,struct gamma_coefficients*,int ) ;

__attribute__((used)) static void apply_degamma_for_user_regamma(struct pwl_float_data_ex *rgb_regamma,
  uint32_t hw_points_num)
{
 uint32_t i;

 struct gamma_coefficients coeff;
 struct pwl_float_data_ex *rgb = rgb_regamma;
 const struct hw_x_point *coord_x = coordinates_x;

 build_coefficients(&coeff, 1);

 i = 0;
 while (i != hw_points_num + 1) {
  rgb->r = translate_from_linear_space_ex(
    coord_x->x, &coeff, 0);
  rgb->g = rgb->r;
  rgb->b = rgb->r;
  ++coord_x;
  ++rgb;
  ++i;
 }
}
