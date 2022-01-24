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
typedef  int u8 ;
typedef  int u32 ;
struct wdt87xx_sys_param {int scaling_factor; int phy_h; int max_x; int max_y; int /*<<< orphan*/  phy_w; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct input_dev {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 size_t FINGER_EV_V1_OFFSET_ID ; 
 size_t FINGER_EV_V1_OFFSET_P ; 
 size_t FINGER_EV_V1_OFFSET_W ; 
 int FINGER_EV_V1_OFFSET_X ; 
 int FINGER_EV_V1_OFFSET_Y ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct input_dev *input,
				   struct wdt87xx_sys_param *param,
				   u8 *buf)
{
	int finger_id;
	u32 x, y, w;
	u8 p;

	finger_id = (buf[FINGER_EV_V1_OFFSET_ID] >> 3) - 1;
	if (finger_id < 0)
		return;

	/* Check if this is an active contact */
	if (!(buf[FINGER_EV_V1_OFFSET_ID] & 0x1))
		return;

	w = buf[FINGER_EV_V1_OFFSET_W];
	w *= param->scaling_factor;

	p = buf[FINGER_EV_V1_OFFSET_P];

	x = FUNC2(buf + FINGER_EV_V1_OFFSET_X);

	y = FUNC2(buf + FINGER_EV_V1_OFFSET_Y);
	y = FUNC0(y * param->phy_h, param->phy_w);

	/* Refuse incorrect coordinates */
	if (x > param->max_x || y > param->max_y)
		return;

	FUNC1(input->dev.parent, "tip on (%d), x(%d), y(%d)\n",
		finger_id, x, y);

	FUNC4(input, finger_id);
	FUNC3(input, MT_TOOL_FINGER, 1);
	FUNC5(input, ABS_MT_TOUCH_MAJOR, w);
	FUNC5(input, ABS_MT_PRESSURE, p);
	FUNC5(input, ABS_MT_POSITION_X, x);
	FUNC5(input, ABS_MT_POSITION_Y, y);
}