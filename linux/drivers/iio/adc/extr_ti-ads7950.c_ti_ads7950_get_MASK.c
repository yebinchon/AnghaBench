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
struct ti_ads7950_state {int gpio_cmd_settings_bitmask; int cmd_settings_bitmask; int single_rx; int /*<<< orphan*/  slock; int /*<<< orphan*/  scan_single_msg; int /*<<< orphan*/  spi; void* single_tx; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int TI_ADS7950_CR_GPIO_DATA ; 
 void* FUNC1 (struct ti_ads7950_state*) ; 
 struct ti_ads7950_state* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned int offset)
{
	struct ti_ads7950_state *st = FUNC2(chip);
	int ret;

	FUNC3(&st->slock);

	/* If set as output, return the output */
	if (st->gpio_cmd_settings_bitmask & FUNC0(offset)) {
		ret = st->cmd_settings_bitmask & FUNC0(offset);
		goto out;
	}

	/* GPIO data bit sets SDO bits 12-15 to GPIO input */
	st->cmd_settings_bitmask |= TI_ADS7950_CR_GPIO_DATA;
	st->single_tx = FUNC1(st);
	ret = FUNC5(st->spi, &st->scan_single_msg);
	if (ret)
		goto out;

	ret = ((st->single_rx >> 12) & FUNC0(offset)) ? 1 : 0;

	/* Revert back to original settings */
	st->cmd_settings_bitmask &= ~TI_ADS7950_CR_GPIO_DATA;
	st->single_tx = FUNC1(st);
	ret = FUNC5(st->spi, &st->scan_single_msg);
	if (ret)
		goto out;

out:
	FUNC4(&st->slock);

	return ret;
}