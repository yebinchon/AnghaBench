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
struct tr {unsigned char* data; size_t idx; struct input_dev* dev; } ;
struct serio {int dummy; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int TR_FORMAT_STATUS_BYTE ; 
 int TR_FORMAT_STATUS_MASK ; 
 int TR_FORMAT_TOUCH_BIT ; 
 size_t TR_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 struct tr* FUNC3 (struct serio*) ; 

__attribute__((used)) static irqreturn_t FUNC4(struct serio *serio,
		unsigned char data, unsigned int flags)
{
	struct tr *tr = FUNC3(serio);
	struct input_dev *dev = tr->dev;

	tr->data[tr->idx] = data;

	if ((tr->data[0] & TR_FORMAT_STATUS_MASK) == TR_FORMAT_STATUS_BYTE) {
		if (++tr->idx == TR_LENGTH) {
			FUNC0(dev, ABS_X,
				(tr->data[1] << 5) | (tr->data[2] >> 1));
			FUNC0(dev, ABS_Y,
				(tr->data[3] << 5) | (tr->data[4] >> 1));
			FUNC1(dev, BTN_TOUCH,
				tr->data[0] & TR_FORMAT_TOUCH_BIT);
			FUNC2(dev);
			tr->idx = 0;
		}
	}

	return IRQ_HANDLED;
}