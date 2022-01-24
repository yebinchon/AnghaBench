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
struct sensor_device_attribute {int /*<<< orphan*/  index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  long long ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 long long FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 long long FUNC1 (char*,int /*<<< orphan*/ ,char*,long long) ; 
 struct sensor_device_attribute* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				  struct device_attribute *da, char *buf)
{
	struct sensor_device_attribute *attr = FUNC2(da);
	long long value;

	value = FUNC0(dev, attr->index);
	if (value < 0)
		return value;
	return FUNC1(buf, PAGE_SIZE, "%lld\n", value);
}