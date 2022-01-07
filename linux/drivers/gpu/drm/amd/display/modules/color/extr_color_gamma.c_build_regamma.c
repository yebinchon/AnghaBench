
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pwl_float_data_ex {int r; int b; int g; } ;
struct hw_x_point {int x; } ;
struct gamma_coefficients {int dummy; } ;
struct fixed31_32 {int dummy; } ;
typedef enum dc_transfer_func_predefined { ____Placeholder_dc_transfer_func_predefined } dc_transfer_func_predefined ;


 int GFP_KERNEL ;
 int NUM_PTS_IN_REGION ;
 int build_coefficients (struct gamma_coefficients*,int) ;
 int kfree (struct gamma_coefficients*) ;
 struct gamma_coefficients* kvzalloc (int,int ) ;
 int memset (int ,int ,int) ;
 int pow_buffer ;
 int pow_buffer_ptr ;
 int translate_from_linear_space_ex (int ,struct gamma_coefficients*,int ) ;

__attribute__((used)) static bool build_regamma(struct pwl_float_data_ex *rgb_regamma,
  uint32_t hw_points_num,
  const struct hw_x_point *coordinate_x, enum dc_transfer_func_predefined type)
{
 uint32_t i;
 bool ret = 0;

 struct gamma_coefficients *coeff;
 struct pwl_float_data_ex *rgb = rgb_regamma;
 const struct hw_x_point *coord_x = coordinate_x;

 coeff = kvzalloc(sizeof(*coeff), GFP_KERNEL);
 if (!coeff)
  goto release;

 if (!build_coefficients(coeff, type))
  goto release;

 memset(pow_buffer, 0, NUM_PTS_IN_REGION * sizeof(struct fixed31_32));
 pow_buffer_ptr = 0;
 i = 0;
 while (i <= hw_points_num) {

  rgb->r = translate_from_linear_space_ex(
   coord_x->x, coeff, 0);
  rgb->g = rgb->r;
  rgb->b = rgb->r;
  ++coord_x;
  ++rgb;
  ++i;
 }
 pow_buffer_ptr = -1;
 ret = 1;
release:
 kfree(coeff);
 return ret;
}
