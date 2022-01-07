
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pwl_float_data_ex {int r; int b; int g; } ;
struct hw_x_point {int x; } ;


 int compute_hlg_oetf (int ,int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static void build_hlg_regamma(struct pwl_float_data_ex *regamma,
  uint32_t hw_points_num,
  const struct hw_x_point *coordinate_x,
  uint32_t sdr_white_level, uint32_t max_luminance_nits)
{
 uint32_t i;

 struct pwl_float_data_ex *rgb = regamma;
 const struct hw_x_point *coord_x = coordinate_x;

 i = 0;


 while (i != hw_points_num + 1) {
  compute_hlg_oetf(coord_x->x, &rgb->r, sdr_white_level, max_luminance_nits);
  rgb->g = rgb->r;
  rgb->b = rgb->r;
  ++coord_x;
  ++rgb;
  ++i;
 }
}
