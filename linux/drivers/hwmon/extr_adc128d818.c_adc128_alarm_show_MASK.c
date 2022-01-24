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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adc128_data {int alarms; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct adc128_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct adc128_data*) ; 
 struct adc128_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 TYPE_1__* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				 struct device_attribute *attr, char *buf)
{
	struct adc128_data *data = FUNC2(dev);
	int mask = 1 << FUNC4(attr)->index;
	u8 alarms;

	if (FUNC0(data))
		return FUNC1(data);

	/*
	 * Clear an alarm after reporting it to user space. If it is still
	 * active, the next update sequence will set the alarm bit again.
	 */
	alarms = data->alarms;
	data->alarms &= ~mask;

	return FUNC3(buf, "%u\n", !!(alarms & mask));
}