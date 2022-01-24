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
struct thermal_cooling_device {struct gpio_fan_data* devdata; } ;
struct gpio_fan_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_fan_data*,unsigned long) ; 

__attribute__((used)) static int FUNC1(struct thermal_cooling_device *cdev,
				  unsigned long state)
{
	struct gpio_fan_data *fan_data = cdev->devdata;

	if (!fan_data)
		return -EINVAL;

	FUNC0(fan_data, state);
	return 0;
}