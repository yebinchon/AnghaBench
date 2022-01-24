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
struct pblk_line_mgmt {int /*<<< orphan*/  free_lock; int /*<<< orphan*/ * data_next; int /*<<< orphan*/ * data_line; } ;
struct pblk {int /*<<< orphan*/  state; struct pblk_line_mgmt l_mg; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBLK_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct pblk *pblk)
{
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;

	FUNC1(&l_mg->free_lock);
	pblk->state = PBLK_STATE_STOPPED;
	FUNC3(FUNC0(pblk), pblk->state);
	l_mg->data_line = NULL;
	l_mg->data_next = NULL;
	FUNC2(&l_mg->free_lock);
}