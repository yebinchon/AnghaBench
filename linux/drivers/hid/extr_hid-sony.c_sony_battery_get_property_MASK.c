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
union power_supply_propval {int intval; } ;
typedef  int u8 ;
struct sony_sc {int battery_charging; int battery_capacity; int cable_state; int /*<<< orphan*/  lock; } ;
struct power_supply {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CAPACITY 131 
#define  POWER_SUPPLY_PROP_PRESENT 130 
#define  POWER_SUPPLY_PROP_SCOPE 129 
#define  POWER_SUPPLY_PROP_STATUS 128 
 int POWER_SUPPLY_SCOPE_DEVICE ; 
 int POWER_SUPPLY_STATUS_CHARGING ; 
 int POWER_SUPPLY_STATUS_DISCHARGING ; 
 int POWER_SUPPLY_STATUS_FULL ; 
 struct sony_sc* FUNC0 (struct power_supply*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct power_supply *psy,
				     enum power_supply_property psp,
				     union power_supply_propval *val)
{
	struct sony_sc *sc = FUNC0(psy);
	unsigned long flags;
	int ret = 0;
	u8 battery_charging, battery_capacity, cable_state;

	FUNC1(&sc->lock, flags);
	battery_charging = sc->battery_charging;
	battery_capacity = sc->battery_capacity;
	cable_state = sc->cable_state;
	FUNC2(&sc->lock, flags);

	switch (psp) {
	case POWER_SUPPLY_PROP_PRESENT:
		val->intval = 1;
		break;
	case POWER_SUPPLY_PROP_SCOPE:
		val->intval = POWER_SUPPLY_SCOPE_DEVICE;
		break;
	case POWER_SUPPLY_PROP_CAPACITY:
		val->intval = battery_capacity;
		break;
	case POWER_SUPPLY_PROP_STATUS:
		if (battery_charging)
			val->intval = POWER_SUPPLY_STATUS_CHARGING;
		else
			if (battery_capacity == 100 && cable_state)
				val->intval = POWER_SUPPLY_STATUS_FULL;
			else
				val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
		break;
	default:
		ret = -EINVAL;
		break;
	}
	return ret;
}