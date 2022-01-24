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
typedef  int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct applesmc_entry {int len; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (struct applesmc_entry const*) ; 
 int /*<<< orphan*/  LIGHT_SENSOR_LEFT_KEY ; 
 int /*<<< orphan*/  LIGHT_SENSOR_RIGHT_KEY ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct applesmc_entry const*) ; 
 struct applesmc_entry* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				struct device_attribute *attr, char *sysfsbuf)
{
	const struct applesmc_entry *entry;
	static int data_length;
	int ret;
	u8 left = 0, right = 0;
	u8 buffer[10];

	if (!data_length) {
		entry = FUNC2(LIGHT_SENSOR_LEFT_KEY);
		if (FUNC0(entry))
			return FUNC1(entry);
		if (entry->len > 10)
			return -ENXIO;
		data_length = entry->len;
		FUNC5("light sensor data length set to %d\n", data_length);
	}

	ret = FUNC3(LIGHT_SENSOR_LEFT_KEY, buffer, data_length);
	/* newer macbooks report a single 10-bit bigendian value */
	if (data_length == 10) {
		left = FUNC4(*(__be16 *)(buffer + 6)) >> 2;
		goto out;
	}
	left = buffer[2];
	if (ret)
		goto out;
	ret = FUNC3(LIGHT_SENSOR_RIGHT_KEY, buffer, data_length);
	right = buffer[2];

out:
	if (ret)
		return ret;
	else
		return FUNC6(sysfsbuf, PAGE_SIZE, "(%d,%d)\n", left, right);
}