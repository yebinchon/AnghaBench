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
typedef  size_t u8 ;
struct sht3x_data {int* temperature_limits; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {size_t index; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct sht3x_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				struct device_attribute *attr,
				char *buf)
{
	struct sht3x_data *data = FUNC0(dev);
	u8 index = FUNC2(attr)->index;
	int temperature_limit = data->temperature_limits[index];

	return FUNC1(buf, PAGE_SIZE, "%d\n", temperature_limit);
}