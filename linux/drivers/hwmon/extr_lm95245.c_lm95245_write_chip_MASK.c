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
struct lm95245_data {int /*<<< orphan*/  update_lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct lm95245_data* FUNC0 (struct device*) ; 
#define  hwmon_chip_update_interval 128 
 int FUNC1 (struct lm95245_data*,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, u32 attr, int channel,
			      long val)
{
	struct lm95245_data *data = FUNC0(dev);
	int ret;

	switch (attr) {
	case hwmon_chip_update_interval:
		FUNC2(&data->update_lock);
		ret = FUNC1(data, val);
		FUNC3(&data->update_lock);
		return ret;
	default:
		return -EOPNOTSUPP;
	}
}