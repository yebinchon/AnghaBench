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
union power_supply_propval {int intval; } ;
struct TYPE_2__ {int cmd_battery; int /*<<< orphan*/  lock; } ;
struct wiimote_data {TYPE_1__ state; } ;
struct power_supply {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
 int POWER_SUPPLY_PROP_CAPACITY ; 
 int POWER_SUPPLY_PROP_SCOPE ; 
 int POWER_SUPPLY_SCOPE_DEVICE ; 
 int /*<<< orphan*/  WIIPROTO_REQ_SREQ ; 
 struct wiimote_data* FUNC0 (struct power_supply*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct wiimote_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct wiimote_data*) ; 

__attribute__((used)) static int FUNC8(struct power_supply *psy,
				       enum power_supply_property psp,
				       union power_supply_propval *val)
{
	struct wiimote_data *wdata = FUNC0(psy);
	int ret = 0, state;
	unsigned long flags;

	if (psp == POWER_SUPPLY_PROP_SCOPE) {
		val->intval = POWER_SUPPLY_SCOPE_DEVICE;
		return 0;
	} else if (psp != POWER_SUPPLY_PROP_CAPACITY) {
		return -EINVAL;
	}

	ret = FUNC3(wdata);
	if (ret)
		return ret;

	FUNC1(&wdata->state.lock, flags);
	FUNC5(wdata, WIIPROTO_REQ_SREQ, 0);
	FUNC7(wdata);
	FUNC2(&wdata->state.lock, flags);

	FUNC6(wdata);
	FUNC4(wdata);

	FUNC1(&wdata->state.lock, flags);
	state = wdata->state.cmd_battery;
	FUNC2(&wdata->state.lock, flags);

	val->intval = state * 100 / 255;
	return ret;
}