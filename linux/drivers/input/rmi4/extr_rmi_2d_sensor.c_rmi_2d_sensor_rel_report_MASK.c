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
struct rmi_2d_axis_alignment {scalar_t__ swap_axes; scalar_t__ flip_y; scalar_t__ flip_x; } ;
struct rmi_2d_sensor {int /*<<< orphan*/  input; struct rmi_2d_axis_alignment axis_align; } ;

/* Variables and functions */
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int /*<<< orphan*/  RMI_2D_REL_POS_MAX ; 
 int /*<<< orphan*/  RMI_2D_REL_POS_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

void FUNC4(struct rmi_2d_sensor *sensor, int x, int y)
{
	struct rmi_2d_axis_alignment *axis_align = &sensor->axis_align;

	x = FUNC2(RMI_2D_REL_POS_MAX, FUNC1(RMI_2D_REL_POS_MIN, (int)x));
	y = FUNC2(RMI_2D_REL_POS_MAX, FUNC1(RMI_2D_REL_POS_MIN, (int)y));

	if (axis_align->flip_x)
		x = FUNC2(RMI_2D_REL_POS_MAX, -x);

	if (axis_align->flip_y)
		y = FUNC2(RMI_2D_REL_POS_MAX, -y);

	if (axis_align->swap_axes)
		FUNC3(x, y);

	if (x || y) {
		FUNC0(sensor->input, REL_X, x);
		FUNC0(sensor->input, REL_Y, y);
	}
}