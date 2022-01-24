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
struct pblk_c_ctx {int /*<<< orphan*/  nr_valid; int /*<<< orphan*/  list; int /*<<< orphan*/  nr_padded; int /*<<< orphan*/  sentry; int /*<<< orphan*/ * lun_bitmap; } ;
struct pblk {int /*<<< orphan*/  recov_writes; int /*<<< orphan*/  resubmit_lock; int /*<<< orphan*/  resubmit_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pblk_c_ctx* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct pblk *pblk, struct pblk_c_ctx *c_ctx)
{
	struct pblk_c_ctx *r_ctx;

	r_ctx = FUNC1(sizeof(struct pblk_c_ctx), GFP_KERNEL);
	if (!r_ctx)
		return;

	r_ctx->lun_bitmap = NULL;
	r_ctx->sentry = c_ctx->sentry;
	r_ctx->nr_valid = c_ctx->nr_valid;
	r_ctx->nr_padded = c_ctx->nr_padded;

	FUNC3(&pblk->resubmit_lock);
	FUNC2(&r_ctx->list, &pblk->resubmit_list);
	FUNC4(&pblk->resubmit_lock);

#ifdef CONFIG_NVM_PBLK_DEBUG
	atomic_long_add(c_ctx->nr_valid, &pblk->recov_writes);
#endif
}