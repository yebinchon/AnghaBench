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
struct pblk_line_mgmt {int /*<<< orphan*/  free_lock; } ;
struct pblk {scalar_t__ state; int /*<<< orphan*/  bb_wq; struct pblk_line_mgmt l_mg; } ;

/* Variables and functions */
 scalar_t__ PBLK_STATE_RECOVERING ; 
 scalar_t__ PBLK_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC2 (struct pblk*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*) ; 
 int FUNC5 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC6 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC10(struct pblk *pblk)
{
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	int ret;

	FUNC7(&l_mg->free_lock);
	if (pblk->state == PBLK_STATE_RECOVERING ||
					pblk->state == PBLK_STATE_STOPPED) {
		FUNC8(&l_mg->free_lock);
		return;
	}
	pblk->state = PBLK_STATE_RECOVERING;
	FUNC9(FUNC1(pblk), pblk->state);
	FUNC8(&l_mg->free_lock);

	FUNC3(pblk);
	FUNC6(pblk);

	ret = FUNC5(pblk);
	if (ret) {
		FUNC2(pblk, "could not close data on teardown(%d)\n", ret);
		return;
	}

	FUNC0(pblk->bb_wq);
	FUNC4(pblk);
}