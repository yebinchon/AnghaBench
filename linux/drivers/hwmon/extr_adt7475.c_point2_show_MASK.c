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
struct sensor_device_attribute_2 {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int* range; int /*<<< orphan*/  lock; int /*<<< orphan*/ ** temp; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 size_t AUTOMIN ; 
 scalar_t__ FUNC0 (struct adt7475_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct adt7475_data*) ; 
 struct adt7475_data* FUNC2 (struct device*) ; 
 int* autorange_table ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct adt7475_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
			   char *buf)
{
	struct adt7475_data *data = FUNC2(dev);
	struct sensor_device_attribute_2 *sattr = FUNC7(attr);
	int out, val;

	if (FUNC0(data))
		return FUNC1(data);

	FUNC3(&data->lock);
	out = (data->range[sattr->index] >> 4) & 0x0F;
	val = FUNC5(data, data->temp[AUTOMIN][sattr->index]);
	FUNC4(&data->lock);

	return FUNC6(buf, "%d\n", val + autorange_table[out]);
}