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
struct w83627hf_data {scalar_t__ type; int /*<<< orphan*/ * pwm_freq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct device_attribute*) ; 
 scalar_t__ w83627hf ; 
 struct w83627hf_data* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *devattr, char *buf)
{
	int nr = FUNC3(devattr)->index;
	struct w83627hf_data *data = FUNC4(dev);
	if (data->type == w83627hf)
		return FUNC2(buf, "%ld\n",
			FUNC1(data->pwm_freq[nr]));
	else
		return FUNC2(buf, "%ld\n",
			FUNC0(data->pwm_freq[nr]));
}