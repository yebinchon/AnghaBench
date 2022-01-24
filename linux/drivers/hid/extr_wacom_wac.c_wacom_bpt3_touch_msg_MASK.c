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
struct wacom_features {scalar_t__ type; } ;
struct wacom_wac {struct input_dev* touch_input; struct wacom_features features; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MINOR ; 
 scalar_t__ INTUOSHT2 ; 
 scalar_t__ INTUOSPS ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int WACOM_CONTACT_AREA_SCALE ; 
 int FUNC0 (struct input_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct input_dev*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct wacom_wac*) ; 

__attribute__((used)) static void FUNC7(struct wacom_wac *wacom, unsigned char *data)
{
	struct wacom_features *features = &wacom->features;
	struct input_dev *input = wacom->touch_input;
	bool touch = data[1] & 0x80;
	int slot = FUNC1(input, data[0]);

	if (slot < 0)
		return;

	touch = touch && FUNC6(wacom);

	FUNC3(input, slot);
	FUNC2(input, MT_TOOL_FINGER, touch);

	if (touch) {
		int x = (data[2] << 4) | (data[4] >> 4);
		int y = (data[3] << 4) | (data[4] & 0x0f);
		int width, height;

		if (features->type >= INTUOSPS && features->type <= INTUOSHT2) {
			width  = data[5] * 100;
			height = data[6] * 100;
		} else {
			/*
			 * "a" is a scaled-down area which we assume is
			 * roughly circular and which can be described as:
			 * a=(pi*r^2)/C.
			 */
			int a = data[5];
			int x_res = FUNC0(input, ABS_MT_POSITION_X);
			int y_res = FUNC0(input, ABS_MT_POSITION_Y);
			width = 2 * FUNC5(a * WACOM_CONTACT_AREA_SCALE);
			height = width * y_res / x_res;
		}

		FUNC4(input, ABS_MT_POSITION_X, x);
		FUNC4(input, ABS_MT_POSITION_Y, y);
		FUNC4(input, ABS_MT_TOUCH_MAJOR, width);
		FUNC4(input, ABS_MT_TOUCH_MINOR, height);
	}
}