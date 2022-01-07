
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int applyDegamma; } ;
struct TYPE_4__ {TYPE_1__ bits; } ;
struct regamma_lut {TYPE_2__ flags; int ramp; } ;
struct pwl_float_data_ex {int dummy; } ;
struct pwl_float_data {int dummy; } ;
struct dividers {void* divider3; int divider2; void* divider1; } ;
struct dc_transfer_func_distributed_points {int x_point_at_y1_red; int x_point_at_y1_green; int x_point_at_y1_blue; scalar_t__ end_exponent; } ;
struct dc_transfer_func {int type; struct dc_transfer_func_distributed_points tf_pts; } ;


 scalar_t__ GAMMA_RGB_256_ENTRIES ;
 int GFP_KERNEL ;
 scalar_t__ MAX_HW_POINTS ;
 int TF_TYPE_DISTRIBUTED_POINTS ;
 scalar_t__ _EXTRA_POINTS ;
 int apply_degamma_for_user_regamma (struct pwl_float_data_ex*,scalar_t__) ;
 int build_new_custom_resulted_curve (scalar_t__,struct dc_transfer_func_distributed_points*) ;
 int coordinates_x ;
 int copy_rgb_regamma_to_coordinates_x (int ,scalar_t__,struct pwl_float_data_ex*) ;
 void* dc_fixpt_from_fraction (int,int) ;
 int dc_fixpt_from_int (int) ;
 int interpolate_user_regamma (scalar_t__,struct pwl_float_data*,int,struct dc_transfer_func_distributed_points*) ;
 void* kcalloc (scalar_t__,int,int ) ;
 int kfree (struct pwl_float_data_ex*) ;
 int kvfree (struct pwl_float_data*) ;
 int scale_user_regamma_ramp (struct pwl_float_data*,int *,struct dividers) ;

bool calculate_user_regamma_ramp(struct dc_transfer_func *output_tf,
  const struct regamma_lut *regamma)
{
 struct dc_transfer_func_distributed_points *tf_pts = &output_tf->tf_pts;
 struct dividers dividers;

 struct pwl_float_data *rgb_user = ((void*)0);
 struct pwl_float_data_ex *rgb_regamma = ((void*)0);
 bool ret = 0;

 if (regamma == ((void*)0))
  return 0;

 output_tf->type = TF_TYPE_DISTRIBUTED_POINTS;

 rgb_user = kcalloc(GAMMA_RGB_256_ENTRIES + _EXTRA_POINTS,
      sizeof(*rgb_user),
      GFP_KERNEL);
 if (!rgb_user)
  goto rgb_user_alloc_fail;

 rgb_regamma = kcalloc(MAX_HW_POINTS + _EXTRA_POINTS,
         sizeof(*rgb_regamma),
         GFP_KERNEL);
 if (!rgb_regamma)
  goto rgb_regamma_alloc_fail;

 dividers.divider1 = dc_fixpt_from_fraction(3, 2);
 dividers.divider2 = dc_fixpt_from_int(2);
 dividers.divider3 = dc_fixpt_from_fraction(5, 2);

 scale_user_regamma_ramp(rgb_user, &regamma->ramp, dividers);

 if (regamma->flags.bits.applyDegamma == 1) {
  apply_degamma_for_user_regamma(rgb_regamma, MAX_HW_POINTS);
  copy_rgb_regamma_to_coordinates_x(coordinates_x,
    MAX_HW_POINTS, rgb_regamma);
 }

 interpolate_user_regamma(MAX_HW_POINTS, rgb_user,
   regamma->flags.bits.applyDegamma, tf_pts);


 tf_pts->end_exponent = 0;
 tf_pts->x_point_at_y1_red = 1;
 tf_pts->x_point_at_y1_green = 1;
 tf_pts->x_point_at_y1_blue = 1;


 build_new_custom_resulted_curve(MAX_HW_POINTS, tf_pts);

 ret = 1;

 kfree(rgb_regamma);
rgb_regamma_alloc_fail:
 kvfree(rgb_user);
rgb_user_alloc_fail:
 return ret;
}
