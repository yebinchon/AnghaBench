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
struct max6697_data {int** temp; int temp_offset; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct max6697_data*) ; 
 size_t MAX6697_TEMP_EXT ; 
 size_t MAX6697_TEMP_INPUT ; 
 int /*<<< orphan*/  FUNC1 (struct max6697_data*) ; 
 struct max6697_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 TYPE_1__* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			       struct device_attribute *devattr, char *buf)
{
	int index = FUNC4(devattr)->index;
	struct max6697_data *data = FUNC2(dev);
	int temp;

	if (FUNC0(data))
		return FUNC1(data);

	temp = (data->temp[index][MAX6697_TEMP_INPUT] - data->temp_offset) << 3;
	temp |= data->temp[index][MAX6697_TEMP_EXT] >> 5;

	return FUNC3(buf, "%d\n", temp * 125);
}