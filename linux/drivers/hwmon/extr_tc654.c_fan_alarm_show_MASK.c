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
struct tc654_data {int status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tc654_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct tc654_data*) ; 
 int TC654_REG_STATUS_F1F ; 
 int TC654_REG_STATUS_F2F ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct tc654_data* FUNC3 (struct device*) ; 
 TYPE_1__* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *da,
			      char *buf)
{
	int nr = FUNC4(da)->index;
	struct tc654_data *data = FUNC3(dev);
	int val;

	if (FUNC0(data))
		return FUNC1(data);

	if (nr == 0)
		val = !!(data->status & TC654_REG_STATUS_F1F);
	else
		val = !!(data->status & TC654_REG_STATUS_F2F);

	return FUNC2(buf, "%d\n", val);
}