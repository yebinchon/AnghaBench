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
struct w83781d_data {int beep_mask; scalar_t__ type; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  W83781D_REG_BEEP_INTS1 ; 
 int /*<<< orphan*/  W83781D_REG_BEEP_INTS2 ; 
 int /*<<< orphan*/  W83781D_REG_BEEP_INTS3 ; 
 scalar_t__ as99127f ; 
 struct w83781d_data* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ w83781d ; 
 int /*<<< orphan*/  FUNC5 (struct w83781d_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC6(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct w83781d_data *data = FUNC1(dev);
	unsigned long val;
	int err;

	err = FUNC2(buf, 10, &val);
	if (err)
		return err;

	FUNC3(&data->update_lock);
	data->beep_mask &= 0x8000; /* preserve beep enable */
	data->beep_mask |= FUNC0(val, data->type);
	FUNC5(data, W83781D_REG_BEEP_INTS1,
			    data->beep_mask & 0xff);
	FUNC5(data, W83781D_REG_BEEP_INTS2,
			    (data->beep_mask >> 8) & 0xff);
	if (data->type != w83781d && data->type != as99127f) {
		FUNC5(data, W83781D_REG_BEEP_INTS3,
				    ((data->beep_mask) >> 16) & 0xff);
	}
	FUNC4(&data->update_lock);

	return count;
}