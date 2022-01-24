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
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct as3645a {int /*<<< orphan*/  fled; TYPE_1__* client; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS_CONTROL_REG ; 
 int /*<<< orphan*/  AS_CURRENT_SET_REG ; 
 int AS_FAULT_INFO_LED_AMOUNT ; 
 int /*<<< orphan*/  AS_FAULT_INFO_REG ; 
 int /*<<< orphan*/  AS_INDICATOR_AND_TIMER_REG ; 
 int /*<<< orphan*/  AS_MODE_INDICATOR ; 
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct as3645a*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct as3645a*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct as3645a*) ; 
 int FUNC4 (struct as3645a*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 

__attribute__((used)) static int FUNC6(struct as3645a *flash)
{
	struct device *dev = &flash->client->dev;
	u32 fault = 0;
	int rval;

	/* clear errors */
	rval = FUNC1(flash, AS_FAULT_INFO_REG);
	if (rval < 0)
		return rval;

	FUNC5(dev, "Fault info: %02x\n", rval);

	rval = FUNC3(flash);
	if (rval < 0)
		return rval;

	rval = FUNC4(flash);
	if (rval < 0)
		return rval;

	rval = FUNC2(flash, AS_MODE_INDICATOR, false);
	if (rval < 0)
		return rval;

	/* read status */
	rval = FUNC0(&flash->fled, &fault);
	if (rval < 0)
		return rval;

	FUNC5(dev, "AS_INDICATOR_AND_TIMER_REG: %02x\n",
		FUNC1(flash, AS_INDICATOR_AND_TIMER_REG));
	FUNC5(dev, "AS_CURRENT_SET_REG: %02x\n",
		FUNC1(flash, AS_CURRENT_SET_REG));
	FUNC5(dev, "AS_CONTROL_REG: %02x\n",
		FUNC1(flash, AS_CONTROL_REG));

	return rval & ~AS_FAULT_INFO_LED_AMOUNT ? -EIO : 0;
}