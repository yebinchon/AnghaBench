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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ dev; } ;
struct tc_data {scalar_t__ hpd_pin; int /*<<< orphan*/  regmap; TYPE_1__ bridge; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTSTS_G ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int INT_SYSERR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  SYSSTAT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *arg)
{
	struct tc_data *tc = arg;
	u32 val;
	int r;

	r = FUNC5(tc->regmap, INTSTS_G, &val);
	if (r)
		return IRQ_NONE;

	if (!val)
		return IRQ_NONE;

	if (val & INT_SYSERR) {
		u32 stat = 0;

		FUNC5(tc->regmap, SYSSTAT, &stat);

		FUNC3(tc->dev, "syserr %x\n", stat);
	}

	if (tc->hpd_pin >= 0 && tc->bridge.dev) {
		/*
		 * H is triggered when the GPIO goes high.
		 *
		 * LC is triggered when the GPIO goes low and stays low for
		 * the duration of LCNT
		 */
		bool h = val & FUNC0(tc->hpd_pin);
		bool lc = val & FUNC1(tc->hpd_pin);

		FUNC2(tc->dev, "GPIO%d: %s %s\n", tc->hpd_pin,
			h ? "H" : "", lc ? "LC" : "");

		if (h || lc)
			FUNC4(tc->bridge.dev);
	}

	FUNC6(tc->regmap, INTSTS_G, val);

	return IRQ_HANDLED;
}