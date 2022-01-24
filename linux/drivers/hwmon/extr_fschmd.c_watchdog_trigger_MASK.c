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
struct fschmd_data {size_t kind; int /*<<< orphan*/  watchdog_lock; int /*<<< orphan*/  watchdog_control; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/ * FSCHMD_REG_WDOG_CONTROL ; 
 int /*<<< orphan*/  FSCHMD_WDOG_CONTROL_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct fschmd_data *data)
{
	int ret = 0;

	FUNC1(&data->watchdog_lock);
	if (!data->client) {
		ret = -ENODEV;
		goto leave;
	}

	data->watchdog_control |= FSCHMD_WDOG_CONTROL_TRIGGER;
	FUNC0(data->client,
				  FSCHMD_REG_WDOG_CONTROL[data->kind],
				  data->watchdog_control);
leave:
	FUNC2(&data->watchdog_lock);
	return ret;
}