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
struct sensor_device_attribute {int index; } ;
struct nct6775_data {unsigned long* target_speed_tolerance; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  speed_tolerance_limit; int /*<<< orphan*/ * fan_div; int /*<<< orphan*/ * target_speed; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nct6775_data* FUNC1 (struct device*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nct6775_data*,int) ; 
 struct sensor_device_attribute* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *attr,
		      const char *buf, size_t count)
{
	struct nct6775_data *data = FUNC1(dev);
	struct sensor_device_attribute *sattr = FUNC8(attr);
	int nr = sattr->index;
	unsigned long val;
	int err;
	int low, high;

	err = FUNC4(buf, 10, &val);
	if (err < 0)
		return err;

	high = FUNC2(data->target_speed[nr],
			      data->fan_div[nr]) + val;
	low = FUNC2(data->target_speed[nr],
			     data->fan_div[nr]) - val;
	if (low <= 0)
		low = 1;
	if (high < low)
		high = low;

	val = (FUNC3(low, data->fan_div[nr]) -
	       FUNC3(high, data->fan_div[nr])) / 2;

	/* Limit tolerance as needed */
	val = FUNC0(val, 0, data->speed_tolerance_limit);

	FUNC5(&data->update_lock);
	data->target_speed_tolerance[nr] = val;
	FUNC7(data, nr);
	FUNC6(&data->update_lock);
	return count;
}