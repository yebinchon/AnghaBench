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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adc128_data {int /*<<< orphan*/ * temp; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct adc128_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct adc128_data*) ; 
 struct adc128_data* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 TYPE_1__* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct adc128_data *data = FUNC2(dev);
	int index = FUNC5(attr)->index;
	int temp;

	if (FUNC0(data))
		return FUNC1(data);

	temp = FUNC3(data->temp[index], 8);
	return FUNC4(buf, "%d\n", temp * 500);/* 0.5 degrees C resolution */
}