#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct pwl_float_data_ex {int /*<<< orphan*/  b; int /*<<< orphan*/  g; int /*<<< orphan*/  r; } ;
struct pwl_float_data {int dummy; } ;
struct pixel_gamma_point {int dummy; } ;
struct hw_x_point {int dummy; } ;
struct gamma_pixel {int dummy; } ;
struct dc_transfer_func_distributed_points {int /*<<< orphan*/ * blue; int /*<<< orphan*/ * green; int /*<<< orphan*/ * red; } ;
struct dc_gamma {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct dc_transfer_func_distributed_points*) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_gamma const*,struct pixel_gamma_point*,struct pwl_float_data*,struct hw_x_point*,struct gamma_pixel const*,int,struct dc_transfer_func_distributed_points*) ; 
 int /*<<< orphan*/  FUNC2 (struct hw_x_point*,int,struct pwl_float_data_ex const*) ; 

__attribute__((used)) static bool FUNC3(
	const struct dc_gamma *ramp,
	struct pixel_gamma_point *coeff128,
	struct pwl_float_data *rgb_user,
	struct hw_x_point *coords_x,
	const struct gamma_pixel *axis_x,
	const struct pwl_float_data_ex *rgb_regamma,
	uint32_t hw_points_num,
	struct dc_transfer_func_distributed_points *tf_pts,
	bool mapUserRamp)
{
	/* setup to spare calculated ideal regamma values */

	int i = 0;
	struct hw_x_point *coords = coords_x;
	const struct pwl_float_data_ex *regamma = rgb_regamma;

	if (ramp && mapUserRamp) {
		FUNC2(coords,
				hw_points_num,
				rgb_regamma);

		FUNC1(
			ramp, coeff128, rgb_user, coords, axis_x,
			hw_points_num, tf_pts);
	} else {
		/* just copy current rgb_regamma into  tf_pts */
		while (i <= hw_points_num) {
			tf_pts->red[i] = regamma->r;
			tf_pts->green[i] = regamma->g;
			tf_pts->blue[i] = regamma->b;

			++regamma;
			++i;
		}
	}

	/* this should be named differently, all it does is clamp to 0-1 */
	FUNC0(hw_points_num, tf_pts);

	return true;
}