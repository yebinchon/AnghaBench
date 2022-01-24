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
struct fschmd_data {int* fan_status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int FSCHMD_FAN_NOT_PRESENT ; 
 struct fschmd_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 TYPE_1__* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			      struct device_attribute *devattr, char *buf)
{
	int index = FUNC2(devattr)->index;
	struct fschmd_data *data = FUNC0(dev);

	if (data->fan_status[index] & FSCHMD_FAN_NOT_PRESENT)
		return FUNC1(buf, "1\n");
	else
		return FUNC1(buf, "0\n");
}