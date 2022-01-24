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
struct cyttsp {int /*<<< orphan*/  irq; int /*<<< orphan*/  state; int /*<<< orphan*/  bl_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  CY_BL_STATE ; 
 int CY_DELAY_DFLT ; 
 int CY_DELAY_MAX ; 
 int /*<<< orphan*/  CY_IDLE_STATE ; 
 int /*<<< orphan*/  CY_SOFT_RESET_MODE ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct cyttsp*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct cyttsp *ts)
{
	unsigned long timeout;
	int retval;

	/* wait for interrupt to set ready completion */
	FUNC3(&ts->bl_ready);
	ts->state = CY_BL_STATE;

	FUNC1(ts->irq);

	retval = FUNC4(ts, CY_SOFT_RESET_MODE);
	if (retval)
		goto out;

	timeout = FUNC5(&ts->bl_ready,
			FUNC2(CY_DELAY_DFLT * CY_DELAY_MAX));
	retval = timeout ? 0 : -EIO;

out:
	ts->state = CY_IDLE_STATE;
	FUNC0(ts->irq);
	return retval;
}