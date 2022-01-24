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
struct max77693_led_device {int /*<<< orphan*/  iout_flash_max; int /*<<< orphan*/  iout_torch_max; } ;
struct max77693_led_config_data {int /*<<< orphan*/  iout_flash_max; int /*<<< orphan*/  iout_torch_max; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct max77693_led_device*,struct max77693_led_config_data*,struct device_node**) ; 
 int /*<<< orphan*/  FUNC1 (struct max77693_led_device*,struct max77693_led_config_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct max77693_led_device *led,
				struct max77693_led_config_data *cfg,
				struct device_node **sub_nodes)
{
	int ret;

	ret = FUNC0(led, cfg, sub_nodes);
	if (ret < 0)
		return ret;

	FUNC1(led, cfg);

	FUNC2(led->iout_torch_max, cfg->iout_torch_max,
				sizeof(led->iout_torch_max));
	FUNC2(led->iout_flash_max, cfg->iout_flash_max,
				sizeof(led->iout_flash_max));

	return 0;
}