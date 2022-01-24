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
struct pblk_c_ctx {int dummy; } ;
struct pblk {int /*<<< orphan*/  inflight_io; } ;
struct nvm_rq {TYPE_1__* bio; scalar_t__ error; struct pblk* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  bi_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pblk_c_ctx* FUNC2 (struct nvm_rq*) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk*,struct nvm_rq*) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*,struct nvm_rq*,struct pblk_c_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct pblk*,struct nvm_rq*) ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct nvm_rq *rqd)
{
	struct pblk *pblk = rqd->private;
	struct pblk_c_ctx *c_ctx = FUNC2(rqd);

	if (rqd->error) {
		FUNC5(pblk, rqd);
		return;
	} else {
		if (FUNC6())
			FUNC3(pblk, rqd);
#ifdef CONFIG_NVM_PBLK_DEBUG
		WARN_ONCE(rqd->bio->bi_status, "pblk: corrupted write error\n");
#endif
	}

	FUNC4(pblk, rqd, c_ctx);
	FUNC1(&pblk->inflight_io);
}