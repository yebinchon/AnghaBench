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
struct elo {unsigned char* data; size_t idx; int id; struct input_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 

__attribute__((used)) static void FUNC3(struct elo *elo, unsigned char data)
{
	struct input_dev *dev = elo->dev;

	elo->data[elo->idx] = data;

	switch (elo->idx++) {

	case 0:
		if ((data & 0xc0) != 0xc0)
			elo->idx = 0;
		break;

	case 1:
		if ((data & 0xc0) != 0x80)
			elo->idx = 0;
		break;

	case 2:
		if ((data & 0xc0) != 0x40)
			elo->idx = 0;
		break;

	case 3:
		if (data & 0xc0) {
			elo->idx = 0;
			break;
		}

		FUNC0(dev, ABS_X, ((elo->data[0] & 0x3f) << 6) | (elo->data[1] & 0x3f));
		FUNC0(dev, ABS_Y, ((elo->data[2] & 0x3f) << 6) | (elo->data[3] & 0x3f));

		if (elo->id == 2) {
			FUNC1(dev, BTN_TOUCH, 1);
			FUNC2(dev);
			elo->idx = 0;
		}

		break;

	case 4:
		if (data) {
			FUNC2(dev);
			elo->idx = 0;
		}
		break;

	case 5:
		if ((data & 0xf0) == 0) {
			FUNC0(dev, ABS_PRESSURE, elo->data[5]);
			FUNC1(dev, BTN_TOUCH, !!elo->data[5]);
		}
		FUNC2(dev);
		elo->idx = 0;
		break;
	}
}