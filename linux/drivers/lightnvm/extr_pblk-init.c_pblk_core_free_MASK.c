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
struct pblk {int /*<<< orphan*/  pad_dist; int /*<<< orphan*/  w_rq_pool; int /*<<< orphan*/  e_rq_pool; int /*<<< orphan*/  r_rq_pool; int /*<<< orphan*/  rec_pool; int /*<<< orphan*/  gen_ws_pool; int /*<<< orphan*/  page_bio_pool; scalar_t__ bb_wq; scalar_t__ r_end_wq; scalar_t__ close_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct pblk *pblk)
{
	if (pblk->close_wq)
		FUNC0(pblk->close_wq);

	if (pblk->r_end_wq)
		FUNC0(pblk->r_end_wq);

	if (pblk->bb_wq)
		FUNC0(pblk->bb_wq);

	FUNC2(&pblk->page_bio_pool);
	FUNC2(&pblk->gen_ws_pool);
	FUNC2(&pblk->rec_pool);
	FUNC2(&pblk->r_rq_pool);
	FUNC2(&pblk->e_rq_pool);
	FUNC2(&pblk->w_rq_pool);

	FUNC3();
	FUNC1(pblk->pad_dist);
}