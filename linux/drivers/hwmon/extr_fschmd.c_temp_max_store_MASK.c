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
struct fschmd_data {size_t kind; long* temp_max; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/ ** FSCHMD_REG_TEMP_LIMIT ; 
 int FUNC0 (long,int,int) ; 
 struct fschmd_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			      struct device_attribute *devattr,
			      const char *buf, size_t count)
{
	int index = FUNC7(devattr)->index;
	struct fschmd_data *data = FUNC1(dev);
	long v;
	int err;

	err = FUNC3(buf, 10, &v);
	if (err)
		return err;

	v = FUNC0(v / 1000, -128, 127) + 128;

	FUNC4(&data->update_lock);
	FUNC2(FUNC6(dev),
		FSCHMD_REG_TEMP_LIMIT[data->kind][index], v);
	data->temp_max[index] = v;
	FUNC5(&data->update_lock);

	return count;
}