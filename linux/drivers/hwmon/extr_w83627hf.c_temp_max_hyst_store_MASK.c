#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct w83627hf_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp_max_hyst; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (long) ; 
 struct w83627hf_data* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (struct device_attribute*) ; 
 int /*<<< orphan*/ * w83627hf_reg_temp_hyst ; 
 int /*<<< orphan*/  FUNC7 (struct w83627hf_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *devattr,
		    const char *buf, size_t count)
{
	int nr = FUNC6(devattr)->index;
	struct w83627hf_data *data = FUNC2(dev);
	u16 tmp;
	long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;

	tmp = (nr) ? FUNC0(val) : FUNC1(val);
	FUNC4(&data->update_lock);
	data->temp_max_hyst[nr] = tmp;
	FUNC7(data, w83627hf_reg_temp_hyst[nr], tmp);
	FUNC5(&data->update_lock);
	return count;
}