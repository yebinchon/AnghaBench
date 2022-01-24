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
struct sis5595_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  temp_over; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIS5595_REG_TEMP_OVER ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 struct sis5595_data* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sis5595_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			       struct device_attribute *attr, const char *buf,
			       size_t count)
{
	struct sis5595_data *data = FUNC1(dev);
	long val;
	int err;

	err = FUNC2(buf, 10, &val);
	if (err)
		return err;

	FUNC3(&data->update_lock);
	data->temp_over = FUNC0(val);
	FUNC5(data, SIS5595_REG_TEMP_OVER, data->temp_over);
	FUNC4(&data->update_lock);
	return count;
}