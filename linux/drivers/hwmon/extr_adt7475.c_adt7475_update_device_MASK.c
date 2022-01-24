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
struct device {int dummy; } ;
struct adt7475_data {int valid; int /*<<< orphan*/  lock; scalar_t__ measure_updated; } ;

/* Variables and functions */
 struct adt7475_data* FUNC0 (int) ; 
 int HZ ; 
 int FUNC1 (struct device*) ; 
 struct adt7475_data* FUNC2 (struct device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct adt7475_data *FUNC6(struct device *dev)
{
	struct adt7475_data *data = FUNC2(dev);
	int ret;

	FUNC3(&data->lock);

	/* Measurement values update every 2 seconds */
	if (FUNC5(jiffies, data->measure_updated + HZ * 2) ||
	    !data->valid) {
		ret = FUNC1(dev);
		if (ret) {
			data->valid = false;
			FUNC4(&data->lock);
			return FUNC0(ret);
		}
		data->measure_updated = jiffies;
		data->valid = true;
	}

	FUNC4(&data->lock);

	return data;
}