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
struct sensor_device_attribute {unsigned int index; } ;
struct regmap {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  LTC4260_FAULT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct regmap* FUNC0 (struct device*) ; 
 int FUNC1 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				 struct device_attribute *da, char *buf)
{
	struct sensor_device_attribute *attr = FUNC4(da);
	struct regmap *regmap = FUNC0(dev);
	unsigned int fault;
	int ret;

	ret = FUNC1(regmap, LTC4260_FAULT, &fault);
	if (ret < 0)
		return ret;

	fault &= attr->index;
	if (fault)		/* Clear reported faults in chip register */
		FUNC2(regmap, LTC4260_FAULT, attr->index, 0);

	return FUNC3(buf, PAGE_SIZE, "%d\n", !!fault);
}