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
struct nitrox_softreq {int flags; struct nitrox_device* ndev; struct nitrox_cmdq* cmdq; } ;
struct TYPE_2__ {int /*<<< orphan*/  dropped; } ;
struct nitrox_device {TYPE_1__ stats; int /*<<< orphan*/  qlen; } ;
struct nitrox_cmdq {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int EINPROGRESS ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nitrox_softreq*,struct nitrox_cmdq*) ; 
 int /*<<< orphan*/  FUNC2 (struct nitrox_cmdq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nitrox_cmdq*) ; 
 int /*<<< orphan*/  FUNC4 (struct nitrox_softreq*,struct nitrox_cmdq*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct nitrox_softreq *sr)
{
	struct nitrox_cmdq *cmdq = sr->cmdq;
	struct nitrox_device *ndev = sr->ndev;

	/* try to post backlog requests */
	FUNC3(cmdq);

	if (FUNC5(FUNC2(cmdq, ndev->qlen))) {
		if (!(sr->flags & CRYPTO_TFM_REQ_MAY_BACKLOG)) {
			/* increment drop count */
			FUNC0(&ndev->stats.dropped);
			return -ENOSPC;
		}
		/* add to backlog list */
		FUNC1(sr, cmdq);
		return -EINPROGRESS;
	}
	FUNC4(sr, cmdq);

	return -EINPROGRESS;
}