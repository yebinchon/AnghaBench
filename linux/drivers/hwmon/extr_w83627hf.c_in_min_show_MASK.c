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
struct w83627hf_data {int /*<<< orphan*/ * in_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,long) ; 
 TYPE_1__* FUNC2 (struct device_attribute*) ; 
 struct w83627hf_data* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *devattr, char *buf)
{
	int nr = FUNC2(devattr)->index;
	struct w83627hf_data *data = FUNC3(dev);
	return FUNC1(buf, "%ld\n", (long)FUNC0(data->in_min[nr]));
}