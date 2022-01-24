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
struct platform_device {int dummy; } ;
struct gpio_fan_data {scalar_t__ gpios; } ;

/* Variables and functions */
 struct gpio_fan_data* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_fan_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct platform_device *pdev)
{
	struct gpio_fan_data *fan_data = FUNC0(pdev);

	if (fan_data->gpios)
		FUNC1(fan_data, 0);
}