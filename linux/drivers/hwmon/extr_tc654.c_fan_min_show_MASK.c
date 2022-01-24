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
struct tc654_data {int /*<<< orphan*/ * fan_fault; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tc654_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct tc654_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 struct tc654_data* FUNC4 (struct device*) ; 
 TYPE_1__* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *da,
			    char *buf)
{
	int nr = FUNC5(da)->index;
	struct tc654_data *data = FUNC4(dev);

	if (FUNC0(data))
		return FUNC1(data);

	return FUNC3(buf, "%d\n",
		       FUNC2(data->fan_fault[nr]));
}