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
struct acx565akm_panel {int enabled; int /*<<< orphan*/  backlight; int /*<<< orphan*/  cabc_mode; TYPE_1__* spi; int /*<<< orphan*/  reset_gpio; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acx565akm_panel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct acx565akm_panel*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct acx565akm_panel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct acx565akm_panel *lcd)
{
	/*FIXME tweak me */
	FUNC6(50);

	FUNC5(lcd->reset_gpio, 1);

	if (lcd->enabled) {
		FUNC4(&lcd->spi->dev, "panel already enabled\n");
		return 0;
	}

	/*
	 * We have to meet all the following delay requirements:
	 * 1. tRW: reset pulse width 10usec (7.12.1)
	 * 2. tRT: reset cancel time 5msec (7.12.1)
	 * 3. Providing PCLK,HS,VS signals for 2 frames = ~50msec worst
	 *    case (7.6.2)
	 * 4. 120msec before the sleep out command (7.12.1)
	 */
	FUNC6(120);

	FUNC3(lcd, 0);
	lcd->enabled = true;

	/* 5msec between sleep out and the next command. (8.2.16) */
	FUNC7(5000, 10000);
	FUNC2(lcd, 1);
	FUNC1(lcd, lcd->cabc_mode);

	return FUNC0(lcd->backlight);
}