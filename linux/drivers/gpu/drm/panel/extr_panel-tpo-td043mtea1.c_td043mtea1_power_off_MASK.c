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
struct td043mtea1_panel {int powered_on; int /*<<< orphan*/  vcc_reg; int /*<<< orphan*/  reset_gpio; } ;

/* Variables and functions */
 int TPO_R03_EN_PWM ; 
 int TPO_R03_VAL_STANDBY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct td043mtea1_panel*,int,int) ; 

__attribute__((used)) static void FUNC4(struct td043mtea1_panel *lcd)
{
	if (!lcd->powered_on)
		return;

	FUNC3(lcd, 3, TPO_R03_VAL_STANDBY | TPO_R03_EN_PWM);

	FUNC0(lcd->reset_gpio, 1);

	/* wait for at least 2 vsyncs before cutting off power */
	FUNC1(50);

	FUNC3(lcd, 3, TPO_R03_VAL_STANDBY);

	FUNC2(lcd->vcc_reg);

	lcd->powered_on = false;
}