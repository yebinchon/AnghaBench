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
typedef  int u32 ;
struct lm90_data {long update_interval; long alarms; int /*<<< orphan*/  update_lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct lm90_data* FUNC0 (struct device*) ; 
#define  hwmon_chip_alarms 129 
#define  hwmon_chip_update_interval 128 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, u32 attr, int channel, long *val)
{
	struct lm90_data *data = FUNC0(dev);
	int err;

	FUNC2(&data->update_lock);
	err = FUNC1(dev);
	FUNC3(&data->update_lock);
	if (err)
		return err;

	switch (attr) {
	case hwmon_chip_update_interval:
		*val = data->update_interval;
		break;
	case hwmon_chip_alarms:
		*val = data->alarms;
		break;
	default:
		return -EOPNOTSUPP;
	}

	return 0;
}