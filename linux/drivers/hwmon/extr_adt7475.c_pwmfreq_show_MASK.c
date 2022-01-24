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
struct adt7475_data {int* range; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*) ; 
 scalar_t__ FUNC1 (struct adt7475_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct adt7475_data*) ; 
 struct adt7475_data* FUNC3 (struct device*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int* pwmfreq_table ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *attr,
			    char *buf)
{
	struct adt7475_data *data = FUNC3(dev);
	struct sensor_device_attribute_2 *sattr = FUNC6(attr);
	int idx;

	if (FUNC1(data))
		return FUNC2(data);
	idx = FUNC4(data->range[sattr->index] & 0xf, 0,
			FUNC0(pwmfreq_table) - 1);

	return FUNC5(buf, "%d\n", pwmfreq_table[idx]);
}