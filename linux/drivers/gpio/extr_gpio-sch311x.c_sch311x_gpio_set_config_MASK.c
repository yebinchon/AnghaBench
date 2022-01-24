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
typedef  int /*<<< orphan*/  u8 ;
struct sch311x_gpio_block {int /*<<< orphan*/  lock; scalar_t__* config_regs; scalar_t__ runtime_reg; } ;
struct gpio_chip {int dummy; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 129 
#define  PIN_CONFIG_DRIVE_PUSH_PULL 128 
 int /*<<< orphan*/  SCH311X_GPIO_CONF_OPEN_DRAIN ; 
 struct sch311x_gpio_block* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned offset,
				   unsigned long config)
{
	struct sch311x_gpio_block *block = FUNC0(chip);
	enum pin_config_param param = FUNC3(config);
	u8 data;

	switch (param) {
	case PIN_CONFIG_DRIVE_OPEN_DRAIN:
		FUNC4(&block->lock);
		data = FUNC1(block->runtime_reg + block->config_regs[offset]);
		data |= SCH311X_GPIO_CONF_OPEN_DRAIN;
		FUNC2(data, block->runtime_reg + block->config_regs[offset]);
		FUNC5(&block->lock);
		return 0;
	case PIN_CONFIG_DRIVE_PUSH_PULL:
		FUNC4(&block->lock);
		data = FUNC1(block->runtime_reg + block->config_regs[offset]);
		data &= ~SCH311X_GPIO_CONF_OPEN_DRAIN;
		FUNC2(data, block->runtime_reg + block->config_regs[offset]);
		FUNC5(&block->lock);
		return 0;
	default:
		break;
	}
	return -ENOTSUPP;
}