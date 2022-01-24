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
struct cyttsp_xydata {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tt_mode; } ;
struct cyttsp {scalar_t__ state; int /*<<< orphan*/  dev; TYPE_1__ xy_data; int /*<<< orphan*/  bl_ready; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ CY_BL_STATE ; 
 scalar_t__ CY_IDLE_STATE ; 
 int /*<<< orphan*/  CY_REG_BASE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct cyttsp*) ; 
 int FUNC3 (struct cyttsp*) ; 
 int /*<<< orphan*/  FUNC4 (struct cyttsp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (struct cyttsp*,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *handle)
{
	struct cyttsp *ts = handle;
	int error;

	if (FUNC7(ts->state == CY_BL_STATE)) {
		FUNC1(&ts->bl_ready);
		goto out;
	}

	/* Get touch data from CYTTSP device */
	error = FUNC6(ts, CY_REG_BASE,
				 sizeof(struct cyttsp_xydata), &ts->xy_data);
	if (error)
		goto out;

	/* provide flow control handshake */
	error = FUNC3(ts);
	if (error)
		goto out;

	if (FUNC7(ts->state == CY_IDLE_STATE))
		goto out;

	if (FUNC0(ts->xy_data.tt_mode)) {
		/*
		 * TTSP device has reset back to bootloader mode.
		 * Restore to operational mode.
		 */
		error = FUNC2(ts);
		if (error) {
			FUNC5(ts->dev,
				"Could not return to operational mode, err: %d\n",
				error);
			ts->state = CY_IDLE_STATE;
		}
	} else {
		FUNC4(ts);
	}

out:
	return IRQ_HANDLED;
}