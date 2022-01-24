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
struct wiimote_debug {int /*<<< orphan*/  eeprom; int /*<<< orphan*/  drm; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct wiimote_data {TYPE_1__ state; struct wiimote_debug* debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wiimote_debug*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct wiimote_data *wdata)
{
	struct wiimote_debug *dbg = wdata->debug;
	unsigned long flags;

	if (!dbg)
		return;

	FUNC2(&wdata->state.lock, flags);
	wdata->debug = NULL;
	FUNC3(&wdata->state.lock, flags);

	FUNC0(dbg->drm);
	FUNC0(dbg->eeprom);
	FUNC1(dbg);
}