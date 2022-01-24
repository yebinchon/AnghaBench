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
struct tsc_ser {unsigned char* data; size_t idx; struct input_dev* dev; } ;
struct serio {int /*<<< orphan*/  dev; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned char,...) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 struct tsc_ser* FUNC3 (struct serio*) ; 
 int /*<<< orphan*/  FUNC4 (struct tsc_ser*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char) ; 

__attribute__((used)) static irqreturn_t FUNC6(struct serio *serio,
		unsigned char data, unsigned int flags)
{
	struct tsc_ser *ptsc = FUNC3(serio);
	struct input_dev *dev = ptsc->dev;

	ptsc->data[ptsc->idx] = data;
	switch (ptsc->idx++) {
	case 0:
		if (FUNC5((data & 0x3e) != 0x10)) {
			FUNC0(&serio->dev,
				"unsynchronized packet start (0x%02x)\n", data);
			ptsc->idx = 0;
		} else if (!(data & 0x01)) {
			FUNC1(dev, BTN_TOUCH, 0);
			FUNC2(dev);
			ptsc->idx = 0;
		}
		break;

	case 1:
	case 3:
		if (FUNC5(data & 0xfc)) {
			FUNC0(&serio->dev,
				"unsynchronized data 0x%02x at offset %d\n",
				data, ptsc->idx - 1);
			ptsc->idx = 0;
		}
		break;

	case 4:
		FUNC4(ptsc);
		ptsc->idx = 0;
		break;
	}

	return IRQ_HANDLED;
}