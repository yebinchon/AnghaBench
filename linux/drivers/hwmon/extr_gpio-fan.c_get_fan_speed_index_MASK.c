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
struct gpio_fan_data {int num_speed; int /*<<< orphan*/  dev; TYPE_1__* speed; } ;
struct TYPE_2__ {int ctrl_val; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct gpio_fan_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(struct gpio_fan_data *fan_data)
{
	int ctrl_val = FUNC0(fan_data);
	int i;

	for (i = 0; i < fan_data->num_speed; i++)
		if (fan_data->speed[i].ctrl_val == ctrl_val)
			return i;

	FUNC1(fan_data->dev,
		 "missing speed array entry for GPIO value 0x%x\n", ctrl_val);

	return -ENODEV;
}