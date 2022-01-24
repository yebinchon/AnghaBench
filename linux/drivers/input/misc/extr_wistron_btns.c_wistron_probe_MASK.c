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
typedef  int u16 ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLUETOOTH ; 
 int /*<<< orphan*/  WIFI ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int bluetooth_enabled ; 
 int /*<<< orphan*/  cmos_address ; 
 int have_bluetooth ; 
 scalar_t__ have_wifi ; 
 int FUNC5 () ; 
 int wifi_enabled ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *dev)
{
	int err;

	FUNC0();
	cmos_address = FUNC2();

	if (have_wifi) {
		u16 wifi = FUNC3(WIFI);
		if (wifi & 1)
			wifi_enabled = wifi & 2;
		else
			have_wifi = 0;

		if (have_wifi)
			FUNC4(WIFI, wifi_enabled);
	}

	if (have_bluetooth) {
		u16 bt = FUNC3(BLUETOOTH);
		if (bt & 1)
			bluetooth_enabled = bt & 2;
		else
			have_bluetooth = false;

		if (have_bluetooth)
			FUNC4(BLUETOOTH, bluetooth_enabled);
	}

	FUNC6(&dev->dev);

	err = FUNC5();
	if (err) {
		FUNC1();
		return err;
	}

	return 0;
}