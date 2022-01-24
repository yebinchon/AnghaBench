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
typedef  int /*<<< orphan*/  u8 ;
struct steam_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  battery_charge; int /*<<< orphan*/  voltage; int /*<<< orphan*/  battery; } ;
struct power_supply {int dummy; } ;
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct power_supply*) ; 
 int /*<<< orphan*/  FUNC1 (struct power_supply*) ; 
 struct power_supply* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct steam_device *steam,
		struct power_supply *battery, u8 *data)
{
	unsigned long flags;

	s16 volts = FUNC7(data + 12);
	u8 batt = data[14];

	/* Creating the battery may have failed */
	FUNC3();
	battery = FUNC2(steam->battery);
	if (FUNC0(battery)) {
		FUNC5(&steam->lock, flags);
		steam->voltage = volts;
		steam->battery_charge = batt;
		FUNC6(&steam->lock, flags);
		FUNC1(battery);
	}
	FUNC4();
}