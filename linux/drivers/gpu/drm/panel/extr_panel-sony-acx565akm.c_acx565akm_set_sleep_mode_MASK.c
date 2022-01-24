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
struct acx565akm_panel {void* hw_guard_end; unsigned long hw_guard_wait; } ;

/* Variables and functions */
 int MIPI_DCS_ENTER_SLEEP_MODE ; 
 int MIPI_DCS_EXIT_SLEEP_MODE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (struct acx565akm_panel*,int) ; 
 void* jiffies ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct acx565akm_panel *lcd, int on)
{
	int cmd = on ? MIPI_DCS_ENTER_SLEEP_MODE : MIPI_DCS_EXIT_SLEEP_MODE;
	unsigned long wait;

	/*
	 * We have to keep 120msec between sleep in/out commands.
	 * (8.2.15, 8.2.16).
	 */
	wait = lcd->hw_guard_end - jiffies;
	if ((long)wait > 0 && wait <= lcd->hw_guard_wait) {
		FUNC3(TASK_UNINTERRUPTIBLE);
		FUNC2(wait);
	}

	FUNC0(lcd, cmd);

	lcd->hw_guard_wait = FUNC1(120);
	lcd->hw_guard_end = jiffies + lcd->hw_guard_wait;
}