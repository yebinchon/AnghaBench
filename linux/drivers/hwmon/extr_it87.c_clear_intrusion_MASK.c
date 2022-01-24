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
struct it87_data {int /*<<< orphan*/  update_lock; scalar_t__ valid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  IT87_REG_CONFIG ; 
 struct it87_data* FUNC1 (struct device*) ; 
 int FUNC2 (struct it87_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct it87_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			       struct device_attribute *attr, const char *buf,
			       size_t count)
{
	struct it87_data *data = FUNC1(dev);
	int config;
	long val;

	if (FUNC4(buf, 10, &val) < 0 || val != 0)
		return -EINVAL;

	FUNC5(&data->update_lock);
	config = FUNC2(data, IT87_REG_CONFIG);
	if (config < 0) {
		count = config;
	} else {
		config |= FUNC0(5);
		FUNC3(data, IT87_REG_CONFIG, config);
		/* Invalidate cache to force re-read */
		data->valid = 0;
	}
	FUNC6(&data->update_lock);

	return count;
}