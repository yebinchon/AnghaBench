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
struct fschmd_data {int* fan_min; scalar_t__ kind; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 struct fschmd_data* FUNC0 (struct device*) ; 
 scalar_t__ fscsyl ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 TYPE_1__* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					struct device_attribute *devattr,
					char *buf)
{
	int index = FUNC2(devattr)->index;
	struct fschmd_data *data = FUNC0(dev);
	int val = data->fan_min[index];

	/* 0 = allow turning off (except on the syl), 1-255 = 50-100% */
	if (val || data->kind == fscsyl)
		val = val / 2 + 128;

	return FUNC1(buf, "%d\n", val);
}