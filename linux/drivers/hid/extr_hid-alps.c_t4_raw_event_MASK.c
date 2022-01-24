#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct t4_input_report {int /*<<< orphan*/  button; TYPE_1__* contact; } ;
struct alps_dev {int max_fingers; unsigned int y_max; unsigned int y_min; int /*<<< orphan*/  input; } ;
struct TYPE_2__ {int x_hi; int x_lo; int y_hi; int y_lo; int palm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct alps_dev *hdata, u8 *data, int size)
{
	unsigned int x, y, z;
	int i;
	struct t4_input_report *p_report = (struct t4_input_report *)data;

	if (!data)
		return 0;
	for (i = 0; i < hdata->max_fingers; i++) {
		x = p_report->contact[i].x_hi << 8 | p_report->contact[i].x_lo;
		y = p_report->contact[i].y_hi << 8 | p_report->contact[i].y_lo;
		y = hdata->y_max - y + hdata->y_min;
		z = (p_report->contact[i].palm < 0x80 &&
			p_report->contact[i].palm > 0) * 62;
		if (x == 0xffff) {
			x = 0;
			y = 0;
			z = 0;
		}
		FUNC1(hdata->input, i);

		FUNC0(hdata->input,
			MT_TOOL_FINGER, z != 0);

		if (!z)
			continue;

		FUNC3(hdata->input, ABS_MT_POSITION_X, x);
		FUNC3(hdata->input, ABS_MT_POSITION_Y, y);
		FUNC3(hdata->input, ABS_MT_PRESSURE, z);
	}
	FUNC2(hdata->input);

	FUNC4(hdata->input, BTN_LEFT, p_report->button);

	FUNC5(hdata->input);
	return 1;
}