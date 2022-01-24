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
struct warrior {unsigned char* data; int /*<<< orphan*/  idx; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_HAT0X ; 
 int /*<<< orphan*/  ABS_HAT0Y ; 
 int /*<<< orphan*/  ABS_THROTTLE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_THUMB ; 
 int /*<<< orphan*/  BTN_TOP ; 
 int /*<<< orphan*/  BTN_TOP2 ; 
 int /*<<< orphan*/  BTN_TRIGGER ; 
 int /*<<< orphan*/  REL_DIAL ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 

__attribute__((used)) static void FUNC4(struct warrior *warrior)
{
	struct input_dev *dev = warrior->dev;
	unsigned char *data = warrior->data;

	if (!warrior->idx) return;

	switch ((data[0] >> 4) & 7) {
		case 1:					/* Button data */
			FUNC1(dev, BTN_TRIGGER,  data[3]       & 1);
			FUNC1(dev, BTN_THUMB,   (data[3] >> 1) & 1);
			FUNC1(dev, BTN_TOP,     (data[3] >> 2) & 1);
			FUNC1(dev, BTN_TOP2,    (data[3] >> 3) & 1);
			break;
		case 3:					/* XY-axis info->data */
			FUNC0(dev, ABS_X, ((data[0] & 8) << 5) - (data[2] | ((data[0] & 4) << 5)));
			FUNC0(dev, ABS_Y, (data[1] | ((data[0] & 1) << 7)) - ((data[0] & 2) << 7));
			break;
		case 5:					/* Throttle, spinner, hat info->data */
			FUNC0(dev, ABS_THROTTLE, (data[1] | ((data[0] & 1) << 7)) - ((data[0] & 2) << 7));
			FUNC0(dev, ABS_HAT0X, (data[3] & 2 ? 1 : 0) - (data[3] & 1 ? 1 : 0));
			FUNC0(dev, ABS_HAT0Y, (data[3] & 8 ? 1 : 0) - (data[3] & 4 ? 1 : 0));
			FUNC2(dev, REL_DIAL,  (data[2] | ((data[0] & 4) << 5)) - ((data[0] & 8) << 5));
			break;
	}
	FUNC3(dev);
}