#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct max6697_data {int alarms; TYPE_1__* chip; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int* alarm_map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct max6697_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct max6697_data*) ; 
 struct max6697_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 TYPE_2__* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
			  char *buf)
{
	int index = FUNC4(attr)->index;
	struct max6697_data *data = FUNC2(dev);

	if (FUNC0(data))
		return FUNC1(data);

	if (data->chip->alarm_map)
		index = data->chip->alarm_map[index];

	return FUNC3(buf, "%u\n", (data->alarms >> index) & 0x1);
}