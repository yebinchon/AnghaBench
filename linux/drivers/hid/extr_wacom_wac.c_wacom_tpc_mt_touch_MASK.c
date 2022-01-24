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
struct wacom_wac {unsigned char* data; TYPE_1__* shared; struct input_dev* touch_input; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  touch_down; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC6 (struct wacom_wac*) ; 

__attribute__((used)) static int FUNC7(struct wacom_wac *wacom)
{
	struct input_dev *input = wacom->touch_input;
	unsigned char *data = wacom->data;
	int i;

	for (i = 0; i < 2; i++) {
		int p = data[1] & (1 << i);
		bool touch = p && FUNC5(wacom);

		FUNC1(input, i);
		FUNC0(input, MT_TOOL_FINGER, touch);
		if (touch) {
			int x = FUNC4((__le16 *)&data[i * 2 + 2]) & 0x7fff;
			int y = FUNC4((__le16 *)&data[i * 2 + 6]) & 0x7fff;

			FUNC3(input, ABS_MT_POSITION_X, x);
			FUNC3(input, ABS_MT_POSITION_Y, y);
		}
	}
	FUNC2(input);

	/* keep touch state for pen event */
	wacom->shared->touch_down = FUNC6(wacom);

	return 1;
}