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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int (*) (struct device*,void*)) ; 
 int /*<<< orphan*/  core_lock ; 
 int /*<<< orphan*/  i2c_bus_type ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(void *data, int (*fn)(struct device *dev, void *data))
{
	int res;

	FUNC1(&core_lock);
	res = FUNC0(&i2c_bus_type, NULL, data, fn);
	FUNC2(&core_lock);

	return res;
}