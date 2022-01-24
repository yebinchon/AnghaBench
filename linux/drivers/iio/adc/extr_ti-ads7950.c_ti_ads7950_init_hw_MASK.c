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
struct ti_ads7950_state {int gpio_cmd_settings_bitmask; int /*<<< orphan*/  slock; int /*<<< orphan*/  scan_single_msg; int /*<<< orphan*/  spi; int /*<<< orphan*/  single_tx; int /*<<< orphan*/  cmd_settings_bitmask; } ;

/* Variables and functions */
 int /*<<< orphan*/  TI_ADS7950_CR_RANGE_5V ; 
 int /*<<< orphan*/  FUNC0 (struct ti_ads7950_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct ti_ads7950_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ti_ads7950_state *st)
{
	int ret = 0;

	FUNC2(&st->slock);

	/* Settings for Manual/Auto1/Auto2 commands */
	/* Default to 5v ref */
	st->cmd_settings_bitmask = TI_ADS7950_CR_RANGE_5V;
	st->single_tx = FUNC1(st);
	ret = FUNC4(st->spi, &st->scan_single_msg);
	if (ret)
		goto out;

	/* Settings for GPIO command */
	st->gpio_cmd_settings_bitmask = 0x0;
	st->single_tx = FUNC0(st);
	ret = FUNC4(st->spi, &st->scan_single_msg);

out:
	FUNC3(&st->slock);

	return ret;
}