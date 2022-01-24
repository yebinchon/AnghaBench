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
struct ntrig_data {unsigned long sensor_physical_height; unsigned long min_height; unsigned long sensor_logical_height; } ;
struct hid_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 struct ntrig_data* FUNC0 (struct hid_device*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 struct hid_device* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			      struct device_attribute *attr,
			      const char *buf, size_t count)
{
	struct hid_device *hdev = FUNC2(dev);
	struct ntrig_data *nd = FUNC0(hdev);

	unsigned long val;

	if (FUNC1(buf, 0, &val))
		return -EINVAL;

	if (val > nd->sensor_physical_height)
		return -EINVAL;

	nd->min_height = val * nd->sensor_logical_height /
			       nd->sensor_physical_height;

	return count;
}