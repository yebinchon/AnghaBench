
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pwl_float_data_ex {void* b; void* g; void* r; } ;
struct hw_x_point {int x; } ;
struct gamma_coefficients {int dummy; } ;
typedef enum dc_transfer_func_predefined { ____Placeholder_dc_transfer_func_predefined } dc_transfer_func_predefined ;


 int NUM_PTS_IN_REGION ;
 int build_coefficients (struct gamma_coefficients*,int) ;
 void* dc_fixpt_one ;
 void* dc_fixpt_zero ;
 void* translate_to_linear_space_ex (int ,struct gamma_coefficients*,int ) ;

__attribute__((used)) static bool build_degamma(struct pwl_float_data_ex *curve,
  uint32_t hw_points_num,
  const struct hw_x_point *coordinate_x, enum dc_transfer_func_predefined type)
{
 uint32_t i;
 struct gamma_coefficients coeff;
 uint32_t begin_index, end_index;
 bool ret = 0;

 if (!build_coefficients(&coeff, type))
  goto release;

 i = 0;




 begin_index = 13 * NUM_PTS_IN_REGION;
 end_index = begin_index + 12 * NUM_PTS_IN_REGION;

 while (i != begin_index) {
  curve[i].r = dc_fixpt_zero;
  curve[i].g = dc_fixpt_zero;
  curve[i].b = dc_fixpt_zero;
  i++;
 }

 while (i != end_index) {
  curve[i].r = translate_to_linear_space_ex(
    coordinate_x[i].x, &coeff, 0);
  curve[i].g = curve[i].r;
  curve[i].b = curve[i].r;
  i++;
 }
 while (i != hw_points_num + 1) {
  curve[i].r = dc_fixpt_one;
  curve[i].g = dc_fixpt_one;
  curve[i].b = dc_fixpt_one;
  i++;
 }
 ret = 1;
release:
 return ret;
}
