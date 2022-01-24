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
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ s32 ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct lm73_data* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct sensor_device_attribute* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *da,
			 char *buf)
{
	struct sensor_device_attribute *attr = FUNC3(da);
	struct lm73_data *data = FUNC0(dev);
	int temp;

	s32 err = FUNC1(data->client, attr->index);
	if (err < 0)
		return err;

	/* use integer division instead of equivalent right shift to
	   guarantee arithmetic shift and preserve the sign */
	temp = (((s16) err) * 250) / 32;
	return FUNC2(buf, PAGE_SIZE, "%d\n", temp);
}