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
struct amc6821_data {int* temp1_auto_point_temp; int* temp2_auto_point_temp; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; int nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct amc6821_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 TYPE_1__* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					 struct device_attribute *devattr,
					 char *buf)
{
	int ix = FUNC3(devattr)->index;
	int nr = FUNC3(devattr)->nr;
	struct amc6821_data *data = FUNC0(dev);
	switch (nr) {
	case 1:
		return FUNC2(buf, "%d\n",
			data->temp1_auto_point_temp[ix] * 1000);
	case 2:
		return FUNC2(buf, "%d\n",
			data->temp2_auto_point_temp[ix] * 1000);
	default:
		FUNC1(dev, "Unknown attr->nr (%d).\n", nr);
		return -EINVAL;
	}
}