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
struct w8001 {unsigned char* data; scalar_t__ type; struct input_dev* touch_dev; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 scalar_t__ BTN_TOOL_FINGER ; 
 scalar_t__ BTN_TOOL_PEN ; 
 scalar_t__ BTN_TOOL_RUBBER ; 
 scalar_t__ KEY_RESERVED ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct w8001*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void FUNC6(struct w8001 *w8001)
{
	struct input_dev *dev = w8001->touch_dev;
	unsigned char *data = w8001->data;
	unsigned int x, y;
	int i;
	int count = 0;

	for (i = 0; i < 2; i++) {
		bool touch = data[0] & (1 << i);

		FUNC2(dev, i);
		FUNC1(dev, MT_TOOL_FINGER, touch);
		if (touch) {
			x = (data[6 * i + 1] << 7) | data[6 * i + 2];
			y = (data[6 * i + 3] << 7) | data[6 * i + 4];
			/* data[5,6] and [11,12] is finger capacity */

			/* scale to pen maximum */
			FUNC5(w8001, &x, &y);

			FUNC3(dev, ABS_MT_POSITION_X, x);
			FUNC3(dev, ABS_MT_POSITION_Y, y);
			count++;
		}
	}

	/* emulate single touch events when stylus is out of proximity.
	 * This is to make single touch backward support consistent
	 * across all Wacom single touch devices.
	 */
	if (w8001->type != BTN_TOOL_PEN &&
			    w8001->type != BTN_TOOL_RUBBER) {
		w8001->type = count == 1 ? BTN_TOOL_FINGER : KEY_RESERVED;
		FUNC0(dev, true);
	}

	FUNC4(dev);
}