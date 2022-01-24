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
struct w83795_data {int pwm_fomc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned int) ; 
 TYPE_1__* FUNC1 (struct device_attribute*) ; 
 struct w83795_data* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct w83795_data *data = FUNC2(dev);
	int index = FUNC1(attr)->index;
	unsigned int mode;

	if (data->pwm_fomc & (1 << index))
		mode = 0;	/* DC */
	else
		mode = 1;	/* PWM */

	return FUNC0(buf, "%u\n", mode);
}