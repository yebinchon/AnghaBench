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
struct w83793_data {int /*<<< orphan*/  watchdog_lock; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  W83793_REG_WDT_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct w83793_data *data)
{
	int ret = 0;

	FUNC0(&data->watchdog_lock);
	if (!data->client) {
		ret = -ENODEV;
		goto leave;
	}

	/* Disable Soft Watchdog */
	FUNC2(data->client, W83793_REG_WDT_LOCK, 0xAA);

leave:
	FUNC1(&data->watchdog_lock);
	return ret;
}