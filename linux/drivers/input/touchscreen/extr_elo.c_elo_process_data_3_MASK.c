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
struct elo {unsigned char* data; size_t idx; struct input_dev* dev; } ;

/* Variables and functions */
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
		if ((data & 0x7f) != 0x01)
			elo->idx = 0;
		break;
	case 2:
		FUNC1(dev, BTN_TOUCH, !(elo->data[1] & 0x80));
		FUNC0(dev, ABS_X, elo->data[1]);
		FUNC0(dev, ABS_Y, elo->data[2]);
		FUNC2(dev);
		elo->idx = 0;
		break;
	}
}