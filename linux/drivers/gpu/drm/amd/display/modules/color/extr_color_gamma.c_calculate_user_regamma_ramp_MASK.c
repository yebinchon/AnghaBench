#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int applyDegamma; } ;
struct TYPE_4__ {TYPE_1__ bits; } ;
struct regamma_lut {TYPE_2__ flags; int /*<<< orphan*/  ramp; } ;
struct pwl_float_data_ex {int dummy; } ;
struct pwl_float_data {int dummy; } ;
struct dividers {void* divider3; int /*<<< orphan*/  divider2; void* divider1; } ;
struct dc_transfer_func_distributed_points {int x_point_at_y1_red; int x_point_at_y1_green; int x_point_at_y1_blue; scalar_t__ end_exponent; } ;
struct dc_transfer_func {int /*<<< orphan*/  type; struct dc_transfer_func_distributed_points tf_pts; } ;

/* Variables and functions */
 scalar_t__ GAMMA_RGB_256_ENTRIES ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MAX_HW_POINTS ; 
 int /*<<< orphan*/  TF_TYPE_DISTRIBUTED_POINTS ; 
 scalar_t__ _EXTRA_POINTS ; 
 int /*<<< orphan*/  FUNC0 (struct pwl_float_data_ex*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct dc_transfer_func_distributed_points*) ; 
 int /*<<< orphan*/  coordinates_x ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,struct pwl_float_data_ex*) ; 
 void* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct pwl_float_data*,int,struct dc_transfer_func_distributed_points*) ; 
 void* FUNC6 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pwl_float_data_ex*) ; 
 int /*<<< orphan*/  FUNC8 (struct pwl_float_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct pwl_float_data*,int /*<<< orphan*/ *,struct dividers) ; 

bool FUNC10(struct dc_transfer_func *output_tf,
		const struct regamma_lut *regamma)
{
	struct dc_transfer_func_distributed_points *tf_pts = &output_tf->tf_pts;
	struct dividers dividers;

	struct pwl_float_data *rgb_user = NULL;
	struct pwl_float_data_ex *rgb_regamma = NULL;
	bool ret = false;

	if (regamma == NULL)
		return false;

	output_tf->type = TF_TYPE_DISTRIBUTED_POINTS;

	rgb_user = FUNC6(GAMMA_RGB_256_ENTRIES + _EXTRA_POINTS,
			   sizeof(*rgb_user),
			   GFP_KERNEL);
	if (!rgb_user)
		goto rgb_user_alloc_fail;

	rgb_regamma = FUNC6(MAX_HW_POINTS + _EXTRA_POINTS,
			      sizeof(*rgb_regamma),
			      GFP_KERNEL);
	if (!rgb_regamma)
		goto rgb_regamma_alloc_fail;

	dividers.divider1 = FUNC3(3, 2);
	dividers.divider2 = FUNC4(2);
	dividers.divider3 = FUNC3(5, 2);

	FUNC9(rgb_user, &regamma->ramp, dividers);

	if (regamma->flags.bits.applyDegamma == 1) {
		FUNC0(rgb_regamma, MAX_HW_POINTS);
		FUNC2(coordinates_x,
				MAX_HW_POINTS, rgb_regamma);
	}

	FUNC5(MAX_HW_POINTS, rgb_user,
			regamma->flags.bits.applyDegamma, tf_pts);

	// no custom HDR curves!
	tf_pts->end_exponent = 0;
	tf_pts->x_point_at_y1_red = 1;
	tf_pts->x_point_at_y1_green = 1;
	tf_pts->x_point_at_y1_blue = 1;

	// this function just clamps output to 0-1
	FUNC1(MAX_HW_POINTS, tf_pts);

	ret = true;

	FUNC7(rgb_regamma);
rgb_regamma_alloc_fail:
	FUNC8(rgb_user);
rgb_user_alloc_fail:
	return ret;
}