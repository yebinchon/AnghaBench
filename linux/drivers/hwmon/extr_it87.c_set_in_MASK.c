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
struct sensor_device_attribute_2 {int index; int nr; } ;
struct it87_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ ** in; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct it87_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct it87_data*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct it87_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute_2* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr,
		      const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sattr = FUNC8(attr);
	struct it87_data *data = FUNC2(dev);
	int index = sattr->index;
	int nr = sattr->nr;
	unsigned long val;

	if (FUNC5(buf, 10, &val) < 0)
		return -EINVAL;

	FUNC6(&data->update_lock);
	data->in[nr][index] = FUNC3(data, nr, val);
	FUNC4(data,
			 index == 1 ? FUNC1(nr)
				    : FUNC0(nr),
			 data->in[nr][index]);
	FUNC7(&data->update_lock);
	return count;
}