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
struct input_dev {int dummy; } ;
struct cy8ctmg110 {struct input_dev* input; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int CY8CTMG110_REG_MAX ; 
 int /*<<< orphan*/  CY8CTMG110_TOUCH_X1 ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct cy8ctmg110*,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct cy8ctmg110 *tsc)
{
	struct input_dev *input = tsc->input;
	unsigned char reg_p[CY8CTMG110_REG_MAX];
	int x, y;

	FUNC4(reg_p, 0, CY8CTMG110_REG_MAX);

	/* Reading coordinates */
	if (FUNC0(tsc, reg_p, 9, CY8CTMG110_TOUCH_X1) != 0)
		return -EIO;

	y = reg_p[2] << 8 | reg_p[3];
	x = reg_p[0] << 8 | reg_p[1];

	/* Number of touch */
	if (reg_p[8] == 0) {
		FUNC2(input, BTN_TOUCH, 0);
	} else  {
		FUNC2(input, BTN_TOUCH, 1);
		FUNC1(input, ABS_X, x);
		FUNC1(input, ABS_Y, y);
	}

	FUNC3(input);

	return 0;
}