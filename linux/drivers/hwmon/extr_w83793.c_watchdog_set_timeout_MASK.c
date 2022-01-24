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
struct w83793_data {unsigned int watchdog_timeout; int /*<<< orphan*/  watchdog_lock; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  W83793_REG_WDT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct w83793_data *data, int timeout)
{
	unsigned int mtimeout;
	int ret;

	mtimeout = FUNC0(timeout, 60);

	if (mtimeout > 255)
		return -EINVAL;

	FUNC1(&data->watchdog_lock);
	if (!data->client) {
		ret = -ENODEV;
		goto leave;
	}

	data->watchdog_timeout = mtimeout;

	/* Set Timeout value (in Minutes) */
	FUNC3(data->client, W83793_REG_WDT_TIMEOUT,
			   data->watchdog_timeout);

	ret = mtimeout * 60;

leave:
	FUNC2(&data->watchdog_lock);
	return ret;
}