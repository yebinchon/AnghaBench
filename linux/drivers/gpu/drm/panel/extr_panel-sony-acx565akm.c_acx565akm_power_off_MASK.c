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
struct acx565akm_panel {int enabled; int /*<<< orphan*/  reset_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acx565akm_panel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acx565akm_panel*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct acx565akm_panel *lcd)
{
	if (!lcd->enabled)
		return;

	FUNC0(lcd, 0);
	FUNC1(lcd, 1);
	lcd->enabled = false;
	/*
	 * We have to provide PCLK,HS,VS signals for 2 frames (worst case
	 * ~50msec) after sending the sleep in command and asserting the
	 * reset signal. We probably could assert the reset w/o the delay
	 * but we still delay to avoid possible artifacts. (7.6.1)
	 */
	FUNC3(50);

	FUNC2(lcd->reset_gpio, 0);

	/* FIXME need to tweak this delay */
	FUNC3(100);
}