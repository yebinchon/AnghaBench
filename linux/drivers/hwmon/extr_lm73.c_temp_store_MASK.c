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
struct lm73_data {int /*<<< orphan*/  client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  LM73_TEMP_MAX ; 
 int /*<<< orphan*/  LM73_TEMP_MIN ; 
 int FUNC0 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lm73_data* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,short) ; 
 int FUNC3 (char const*,int,long*) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *da,
			  const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC4(da);
	struct lm73_data *data = FUNC1(dev);
	long temp;
	short value;
	s32 err;

	int status = FUNC3(buf, 10, &temp);
	if (status < 0)
		return status;

	/* Write value */
	value = FUNC0(temp / 250, LM73_TEMP_MIN, LM73_TEMP_MAX) << 5;
	err = FUNC2(data->client, attr->index, value);
	return (err < 0) ? err : count;
}