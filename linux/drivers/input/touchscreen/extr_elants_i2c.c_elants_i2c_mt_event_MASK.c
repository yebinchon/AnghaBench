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
typedef  int u16 ;
struct input_dev {int dummy; } ;
struct elants_data {TYPE_1__* client; struct input_dev* input; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  EV_ABS ; 
 int FW_POS_PRESSURE ; 
 int FW_POS_STATE ; 
 int FW_POS_WIDTH ; 
 int FW_POS_XY ; 
 int MAX_CONTACT_NUM ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 

__attribute__((used)) static void FUNC6(struct elants_data *ts, u8 *buf)
{
	struct input_dev *input = ts->input;
	unsigned int n_fingers;
	u16 finger_state;
	int i;

	n_fingers = buf[FW_POS_STATE + 1] & 0x0f;
	finger_state = ((buf[FW_POS_STATE + 1] & 0x30) << 4) |
			buf[FW_POS_STATE];

	FUNC0(&ts->client->dev,
		"n_fingers: %u, state: %04x\n",  n_fingers, finger_state);

	for (i = 0; i < MAX_CONTACT_NUM && n_fingers; i++) {
		if (finger_state & 1) {
			unsigned int x, y, p, w;
			u8 *pos;

			pos = &buf[FW_POS_XY + i * 3];
			x = (((u16)pos[0] & 0xf0) << 4) | pos[1];
			y = (((u16)pos[0] & 0x0f) << 8) | pos[2];
			p = buf[FW_POS_PRESSURE + i];
			w = buf[FW_POS_WIDTH + i];

			FUNC0(&ts->client->dev, "i=%d x=%d y=%d p=%d w=%d\n",
				i, x, y, p, w);

			FUNC3(input, i);
			FUNC2(input, MT_TOOL_FINGER, true);
			FUNC1(input, EV_ABS, ABS_MT_POSITION_X, x);
			FUNC1(input, EV_ABS, ABS_MT_POSITION_Y, y);
			FUNC1(input, EV_ABS, ABS_MT_PRESSURE, p);
			FUNC1(input, EV_ABS, ABS_MT_TOUCH_MAJOR, w);

			n_fingers--;
		}

		finger_state >>= 1;
	}

	FUNC4(input);
	FUNC5(input);
}