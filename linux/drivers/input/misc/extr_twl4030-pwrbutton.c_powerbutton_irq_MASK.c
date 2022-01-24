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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct input_dev {TYPE_1__ dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int PWR_PWRON_IRQ ; 
 int /*<<< orphan*/  STS_HW_CONDITIONS ; 
 int /*<<< orphan*/  TWL_MODULE_PM_MASTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *_pwr)
{
	struct input_dev *pwr = _pwr;
	int err;
	u8 value;

	err = FUNC4(TWL_MODULE_PM_MASTER, &value, STS_HW_CONDITIONS);
	if (!err)  {
		FUNC3(pwr->dev.parent, 0);
		FUNC1(pwr, KEY_POWER, value & PWR_PWRON_IRQ);
		FUNC2(pwr);
	} else {
		FUNC0(pwr->dev.parent, "twl4030: i2c error %d while reading"
			" TWL4030 PM_MASTER STS_HW_CONDITIONS register\n", err);
	}

	return IRQ_HANDLED;
}