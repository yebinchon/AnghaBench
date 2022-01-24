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
struct td043mtea1_panel {int powered_on; int /*<<< orphan*/  mode; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  vcc_reg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TPO_R02_NCLK_RISING ; 
 int TPO_R03_VAL_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct td043mtea1_panel*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct td043mtea1_panel*) ; 
 int /*<<< orphan*/  FUNC6 (struct td043mtea1_panel*) ; 

__attribute__((used)) static int FUNC7(struct td043mtea1_panel *lcd)
{
	int ret;

	if (lcd->powered_on)
		return 0;

	ret = FUNC3(lcd->vcc_reg);
	if (ret < 0)
		return ret;

	/* Wait for the panel to stabilize. */
	FUNC2(160);

	FUNC1(lcd->reset_gpio, 0);

	FUNC4(lcd, 2, FUNC0(lcd->mode) | TPO_R02_NCLK_RISING);
	FUNC4(lcd, 3, TPO_R03_VAL_NORMAL);
	FUNC4(lcd, 0x20, 0xf0);
	FUNC4(lcd, 0x21, 0xf0);
	FUNC6(lcd);
	FUNC5(lcd);

	lcd->powered_on = true;

	return 0;
}