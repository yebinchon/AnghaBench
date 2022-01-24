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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7x10_data {void* hyst; int /*<<< orphan*/ * temp; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct adt7x10_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ADT7X10_TEMP_MAX ; 
 int /*<<< orphan*/  ADT7X10_TEMP_MIN ; 
 int /*<<< orphan*/  ADT7X10_T_HYST ; 
 int /*<<< orphan*/  ADT7X10_T_HYST_MASK ; 
 long FUNC1 (int,int) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,void*) ; 
 void* FUNC3 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct adt7x10_data* FUNC4 (struct device*) ; 
 int FUNC5 (char const*,int,long*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				    struct device_attribute *da,
				    const char *buf, size_t count)
{
	struct adt7x10_data *data = FUNC4(dev);
	int limit, ret;
	long hyst;

	ret = FUNC5(buf, 10, &hyst);
	if (ret)
		return ret;
	/* convert absolute hysteresis value to a 4 bit delta value */
	limit = FUNC0(data, data->temp[1]);
	hyst = FUNC3(hyst, ADT7X10_TEMP_MIN, ADT7X10_TEMP_MAX);
	data->hyst = FUNC3(FUNC1(limit - hyst, 1000),
				   0, ADT7X10_T_HYST_MASK);
	ret = FUNC2(dev, ADT7X10_T_HYST, data->hyst);
	if (ret)
		return ret;

	return count;
}