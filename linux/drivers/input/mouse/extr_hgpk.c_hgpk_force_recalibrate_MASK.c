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
struct psmouse {scalar_t__ model; struct hgpk_data* private; } ;
struct hgpk_data {scalar_t__ recalib_window; } ;

/* Variables and functions */
 scalar_t__ HGPK_MODEL_C ; 
 int /*<<< orphan*/  PSMOUSE_INITIALIZING ; 
 int /*<<< orphan*/  autorecal ; 
 int FUNC0 (struct psmouse*,int) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC3 (struct psmouse*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct psmouse*,int /*<<< orphan*/ ) ; 
 scalar_t__ recal_guard_time ; 
 scalar_t__ tpdebug ; 

__attribute__((used)) static int FUNC5(struct psmouse *psmouse)
{
	struct hgpk_data *priv = psmouse->private;
	int err;

	/* C-series touchpads added the recalibrate command */
	if (psmouse->model < HGPK_MODEL_C)
		return 0;

	if (!autorecal) {
		FUNC3(psmouse, "recalibration disabled, ignoring\n");
		return 0;
	}

	FUNC3(psmouse, "recalibrating touchpad..\n");

	/* we don't want to race with the irq handler, nor with resyncs */
	FUNC4(psmouse, PSMOUSE_INITIALIZING);

	/* start by resetting the device */
	err = FUNC0(psmouse, true);
	if (err)
		return err;

	/*
	 * XXX: If a finger is down during this delay, recalibration will
	 * detect capacitance incorrectly.  This is a hardware bug, and
	 * we don't have a good way to deal with it.  The 2s window stuff
	 * (below) is our best option for now.
	 */
	if (FUNC2(psmouse))
		return -1;

	if (tpdebug)
		FUNC3(psmouse, "touchpad reactivated\n");

	/*
	 * If we get packets right away after recalibrating, it's likely
	 * that a finger was on the touchpad.  If so, it's probably
	 * miscalibrated, so we optionally schedule another.
	 */
	if (recal_guard_time)
		priv->recalib_window = jiffies +
			FUNC1(recal_guard_time);

	return 0;
}