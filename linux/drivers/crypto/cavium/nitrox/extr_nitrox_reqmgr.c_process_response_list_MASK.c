#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * orh; } ;
struct nitrox_softreq {void* cb_arg; int /*<<< orphan*/  (* callback ) (void*,int) ;TYPE_2__ resp; int /*<<< orphan*/  tstamp; int /*<<< orphan*/  status; } ;
struct TYPE_3__ {int /*<<< orphan*/  completed; } ;
struct nitrox_device {TYPE_1__ stats; int /*<<< orphan*/  timeout; } ;
struct nitrox_cmdq {int /*<<< orphan*/  pending_count; struct nitrox_device* ndev; } ;
typedef  int /*<<< orphan*/  (* completion_t ) (void*,int) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nitrox_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ REQ_POSTED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 struct nitrox_softreq* FUNC7 (struct nitrox_cmdq*) ; 
 int /*<<< orphan*/  FUNC8 (struct nitrox_softreq*,struct nitrox_cmdq*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct nitrox_softreq*) ; 
 int /*<<< orphan*/  FUNC11 (struct nitrox_softreq*) ; 

__attribute__((used)) static void FUNC12(struct nitrox_cmdq *cmdq)
{
	struct nitrox_device *ndev = cmdq->ndev;
	struct nitrox_softreq *sr;
	int req_completed = 0, err = 0, budget;
	completion_t callback;
	void *cb_arg;

	/* check all pending requests */
	budget = FUNC4(&cmdq->pending_count);

	while (req_completed < budget) {
		sr = FUNC7(cmdq);
		if (!sr)
			break;

		if (FUNC4(&sr->status) != REQ_POSTED)
			break;

		/* check orh and completion bytes updates */
		if (!FUNC11(sr)) {
			/* request not completed, check for timeout */
			if (!FUNC5(sr->tstamp, ndev->timeout))
				break;
			FUNC6(FUNC0(ndev),
					    "Request timeout, orh 0x%016llx\n",
					    FUNC1(*sr->resp.orh));
		}
		FUNC3(&cmdq->pending_count);
		FUNC2(&ndev->stats.completed);
		/* sync with other cpus */
		FUNC9();
		/* remove from response list */
		FUNC8(sr, cmdq);
		/* ORH error code */
		err = FUNC1(*sr->resp.orh) & 0xff;
		callback = sr->callback;
		cb_arg = sr->cb_arg;
		FUNC10(sr);
		if (callback)
			callback(cb_arg, err);

		req_completed++;
	}
}