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
struct sev_issue_cmd {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  SEV_CMD_FACTORY_RESET ; 
 int SEV_STATE_INIT ; 
 int SEV_STATE_WORKING ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct sev_issue_cmd *argp)
{
	int state, rc;

	/*
	 * The SEV spec requires that FACTORY_RESET must be issued in
	 * UNINIT state. Before we go further lets check if any guest is
	 * active.
	 *
	 * If FW is in WORKING state then deny the request otherwise issue
	 * SHUTDOWN command do INIT -> UNINIT before issuing the FACTORY_RESET.
	 *
	 */
	rc = FUNC2(&state, &argp->error);
	if (rc)
		return rc;

	if (state == SEV_STATE_WORKING)
		return -EBUSY;

	if (state == SEV_STATE_INIT) {
		rc = FUNC1(&argp->error);
		if (rc)
			return rc;
	}

	return FUNC0(SEV_CMD_FACTORY_RESET, NULL, &argp->error);
}