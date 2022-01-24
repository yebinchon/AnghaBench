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
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ FW_EMPTY ; 
 scalar_t__ FW_ERR ; 
 scalar_t__ FW_TRY ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,char*) ; 
 int fw_err ; 
 int /*<<< orphan*/  fw_mutex ; 
 scalar_t__ fw_state ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct hfi1_devdata *dd)
{
	unsigned long timeout;

	FUNC4(&fw_mutex);

	/* 40s delay due to long delay on missing firmware on some systems */
	timeout = jiffies + FUNC2(40000);
	while (fw_state == FW_TRY) {
		/*
		 * Another device is trying the firmware.  Wait until it
		 * decides what works (or not).
		 */
		if (FUNC6(jiffies, timeout)) {
			/* waited too long */
			FUNC1(dd, "Timeout waiting for firmware try");
			fw_state = FW_ERR;
			fw_err = -ETIMEDOUT;
			break;
		}
		FUNC5(&fw_mutex);
		FUNC3(20);	/* arbitrary delay */
		FUNC4(&fw_mutex);
	}
	/* not in FW_TRY state */

	/* set fw_state to FW_TRY, FW_FINAL, or FW_ERR, and fw_err */
	if (fw_state == FW_EMPTY)
		FUNC0(dd);

	FUNC5(&fw_mutex);
	return fw_err;
}