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
struct tw {int touched; unsigned char* data; scalar_t__ idx; struct input_dev* dev; } ;
struct serio {int dummy; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ TW_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 struct tw* FUNC3 (struct serio*) ; 

__attribute__((used)) static irqreturn_t FUNC4(struct serio *serio,
		unsigned char data, unsigned int flags)
{
	struct tw *tw = FUNC3(serio);
	struct input_dev *dev = tw->dev;

	if (data) {		/* touch */
		tw->touched = 1;
		tw->data[tw->idx++] = data;
		/* verify length and that the two Y's are the same */
		if (tw->idx == TW_LENGTH && tw->data[1] == tw->data[2]) {
			FUNC0(dev, ABS_X, tw->data[0]);
			FUNC0(dev, ABS_Y, tw->data[1]);
			FUNC1(dev, BTN_TOUCH, 1);
			FUNC2(dev);
			tw->idx = 0;
		}
	} else if (tw->touched) {	/* untouch */
		FUNC1(dev, BTN_TOUCH, 0);
		FUNC2(dev);
		tw->idx = 0;
		tw->touched = 0;
	}

	return IRQ_HANDLED;
}