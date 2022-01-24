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
typedef  scalar_t__ uint32_t ;
struct pwl_float_data_ex {int /*<<< orphan*/  r; int /*<<< orphan*/  b; int /*<<< orphan*/  g; } ;
struct hw_x_point {int /*<<< orphan*/  x; } ;
struct gamma_coefficients {int dummy; } ;
struct fixed31_32 {int dummy; } ;
typedef  enum dc_transfer_func_predefined { ____Placeholder_dc_transfer_func_predefined } dc_transfer_func_predefined ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NUM_PTS_IN_REGION ; 
 int /*<<< orphan*/  FUNC0 (struct gamma_coefficients*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gamma_coefficients*) ; 
 struct gamma_coefficients* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pow_buffer ; 
 int pow_buffer_ptr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct gamma_coefficients*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct pwl_float_data_ex *rgb_regamma,
		uint32_t hw_points_num,
		const struct hw_x_point *coordinate_x, enum dc_transfer_func_predefined type)
{
	uint32_t i;
	bool ret = false;

	struct gamma_coefficients *coeff;
	struct pwl_float_data_ex *rgb = rgb_regamma;
	const struct hw_x_point *coord_x = coordinate_x;

	coeff = FUNC2(sizeof(*coeff), GFP_KERNEL);
	if (!coeff)
		goto release;

	if (!FUNC0(coeff, type))
		goto release;

	FUNC3(pow_buffer, 0, NUM_PTS_IN_REGION * sizeof(struct fixed31_32));
	pow_buffer_ptr = 0; // see variable definition for more info
	i = 0;
	while (i <= hw_points_num) {
		/*TODO use y vs r,g,b*/
		rgb->r = FUNC4(
			coord_x->x, coeff, 0);
		rgb->g = rgb->r;
		rgb->b = rgb->r;
		++coord_x;
		++rgb;
		++i;
	}
	pow_buffer_ptr = -1; // reset back to no optimize
	ret = true;
release:
	FUNC1(coeff);
	return ret;
}