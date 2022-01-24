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
struct sev_issue_cmd {int /*<<< orphan*/  error; } ;
struct TYPE_2__ {scalar_t__ sev_state; } ;

/* Variables and functions */
 scalar_t__ SEV_STATE_UNINIT ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* psp_master ; 

__attribute__((used)) static int FUNC2(int cmd, struct sev_issue_cmd *argp)
{
	int rc;

	if (psp_master->sev_state == SEV_STATE_UNINIT) {
		rc = FUNC1(&argp->error);
		if (rc)
			return rc;
	}

	return FUNC0(cmd, NULL, &argp->error);
}