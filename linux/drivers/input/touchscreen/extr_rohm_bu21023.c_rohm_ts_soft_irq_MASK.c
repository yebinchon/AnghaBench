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
typedef  int u8 ;
struct rohm_ts_data {int finger_count; unsigned int* contact_count; struct input_dev* input; struct i2c_client* client; } ;
struct input_mt_pos {int x; int y; } ;
struct input_dev {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
typedef  int s16 ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int CALIBRATION_DONE ; 
 int CALIBRATION_REQUEST ; 
#define  DUAL_TOUCH 129 
 int INT_ALL ; 
 int /*<<< orphan*/  INT_CLEAR ; 
 int /*<<< orphan*/  INT_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MAX_CONTACTS ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  POS_X1_H ; 
 int /*<<< orphan*/  POS_X1_L ; 
 int /*<<< orphan*/  POS_X2_H ; 
 int /*<<< orphan*/  POS_X2_L ; 
 int /*<<< orphan*/  POS_Y1_H ; 
 int /*<<< orphan*/  POS_Y1_L ; 
 int /*<<< orphan*/  POS_Y2_H ; 
 int /*<<< orphan*/  POS_Y2_L ; 
 int PROGRAM_LOAD_DONE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ROHM_TS_DISPLACEMENT_MAX ; 
#define  SINGLE_TOUCH 128 
 int SLEEP_IN ; 
 int SLEEP_OUT ; 
 int /*<<< orphan*/  TOUCH_GESTURE ; 
 int TOUCH_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 unsigned int* dual_touch_threshold ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int*,struct input_mt_pos*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct i2c_client*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC13 (struct rohm_ts_data*) ; 
 unsigned int* single_touch_threshold ; 
 unsigned int* untouch_threshold ; 

__attribute__((used)) static irqreturn_t FUNC14(int irq, void *dev_id)
{
	struct rohm_ts_data *ts = dev_id;
	struct i2c_client *client = ts->client;
	struct input_dev *input_dev = ts->input;
	struct device *dev = &client->dev;

	u8 buf[10];	/* for POS_X1_H(0x20)-TOUCH_GESTURE(0x29) */

	struct input_mt_pos pos[MAX_CONTACTS];
	int slots[MAX_CONTACTS];
	u8 touch_flags;
	unsigned int threshold;
	int finger_count = -1;
	int prev_finger_count = ts->finger_count;
	int count;
	int error;
	int i;

	error = FUNC3(client, INT_MASK, INT_ALL);
	if (error)
		return IRQ_HANDLED;

	/* Clear all interrupts */
	error = FUNC3(client, INT_CLEAR, 0xff);
	if (error)
		return IRQ_HANDLED;

#define READ_POS_BUF(reg)	buf[((reg) - POS_X1_H)]

	error = FUNC12(client, POS_X1_H, buf, sizeof(buf));
	if (error)
		return IRQ_HANDLED;

	touch_flags = READ_POS_BUF(TOUCH_GESTURE) & TOUCH_MASK;
	if (touch_flags) {
		/* generate coordinates */
		pos[0].x = ((s16)READ_POS_BUF(POS_X1_H) << 2) |
			   READ_POS_BUF(POS_X1_L);
		pos[0].y = ((s16)READ_POS_BUF(POS_Y1_H) << 2) |
			   READ_POS_BUF(POS_Y1_L);
		pos[1].x = ((s16)READ_POS_BUF(POS_X2_H) << 2) |
			   READ_POS_BUF(POS_X2_L);
		pos[1].y = ((s16)READ_POS_BUF(POS_Y2_H) << 2) |
			   READ_POS_BUF(POS_Y2_L);
	}

	switch (touch_flags) {
	case 0:
		threshold = untouch_threshold[prev_finger_count];
		if (++ts->contact_count[0] >= threshold)
			finger_count = 0;
		break;

	case SINGLE_TOUCH:
		threshold = single_touch_threshold[prev_finger_count];
		if (++ts->contact_count[1] >= threshold)
			finger_count = 1;

		if (finger_count == 1) {
			if (pos[1].x != 0 && pos[1].y != 0) {
				pos[0].x = pos[1].x;
				pos[0].y = pos[1].y;
				pos[1].x = 0;
				pos[1].y = 0;
			}
		}
		break;

	case DUAL_TOUCH:
		threshold = dual_touch_threshold[prev_finger_count];
		if (++ts->contact_count[2] >= threshold)
			finger_count = 2;
		break;

	default:
		FUNC1(dev,
			"Three or more touches are not supported\n");
		return IRQ_HANDLED;
	}

	if (finger_count >= 0) {
		if (prev_finger_count != finger_count) {
			count = ts->contact_count[finger_count];
			FUNC11(ts->contact_count, 0, sizeof(ts->contact_count));
			ts->contact_count[finger_count] = count;
		}

		FUNC4(input_dev, slots, pos,
				      finger_count, ROHM_TS_DISPLACEMENT_MAX);

		for (i = 0; i < finger_count; i++) {
			FUNC7(input_dev, slots[i]);
			FUNC6(input_dev,
						   MT_TOOL_FINGER, true);
			FUNC9(input_dev,
					 ABS_MT_POSITION_X, pos[i].x);
			FUNC9(input_dev,
					 ABS_MT_POSITION_Y, pos[i].y);
		}

		FUNC8(input_dev);
		FUNC5(input_dev, true);
		FUNC10(input_dev);

		ts->finger_count = finger_count;
	}

	if (READ_POS_BUF(TOUCH_GESTURE) & CALIBRATION_REQUEST) {
		error = FUNC13(ts);
		if (error)
			FUNC2(dev, "manual calibration failed: %d\n",
				 error);
	}

	FUNC3(client, INT_MASK,
				  CALIBRATION_DONE | SLEEP_OUT | SLEEP_IN |
				  PROGRAM_LOAD_DONE);

	return IRQ_HANDLED;
}