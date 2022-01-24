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
typedef  int u8 ;
struct lm95234_data {int sensor_type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 struct lm95234_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct lm95234_data*) ; 
 int FUNC2 (char*,char*) ; 
 TYPE_1__* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
			 char *buf)
{
	struct lm95234_data *data = FUNC0(dev);
	u8 mask = FUNC3(attr)->index;
	int ret = FUNC1(data);

	if (ret)
		return ret;

	return FUNC2(buf, data->sensor_type & mask ? "1\n" : "2\n");
}