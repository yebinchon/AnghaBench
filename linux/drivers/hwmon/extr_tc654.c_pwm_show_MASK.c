#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tc654_data {int config; size_t duty_cycle; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tc654_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct tc654_data*) ; 
 int TC654_REG_CONFIG_SDM ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int* tc654_pwm_map ; 
 struct tc654_data* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *da,
			char *buf)
{
	struct tc654_data *data = FUNC3(dev);
	int pwm;

	if (FUNC0(data))
		return FUNC1(data);

	if (data->config & TC654_REG_CONFIG_SDM)
		pwm = 0;
	else
		pwm = tc654_pwm_map[data->duty_cycle];

	return FUNC2(buf, "%d\n", pwm);
}