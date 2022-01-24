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
struct tc654_data {int config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct tc654_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct tc654_data*) ; 
 int* TC654_FAN_PULSE_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 struct tc654_data* FUNC4 (struct device*) ; 
 TYPE_1__* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			       struct device_attribute *da, char *buf)
{
	int nr = FUNC5(da)->index;
	struct tc654_data *data = FUNC4(dev);
	u8 val;

	if (FUNC1(data))
		return FUNC2(data);

	val = FUNC0((data->config >> TC654_FAN_PULSE_SHIFT[nr]) & 0x03);
	return FUNC3(buf, "%d\n", val);
}